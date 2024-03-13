#!/bin/bash
#
# LSF batch script to run an MPI application
#
#SBATCH -J run_name
#SBATCH -t 24:00:00               # wall-clock time (hrs:mins)
#SBATCH -p edr
#SBATCH -n 28                  # number of tasks in job
#SBATCH -N 1
#SBATCH -o Run.%J.out   # output file name in which %J is replaced by the job id
#SBATCH -e Run.%J.err   # error file name in which %J is replaced by the job id

source /etc/profile.d/modules.sh
module add intel/2021.4.0
module load openmpi
# CMDFILE stuff for launching using multiple MITgcm executables
export MP_CMDFILE=cmd_file.txt
export MP_PGMMODEL=mpmd

#- coupled:
Npr=28; NpOc=3;
kpr=6
nfirst=0 # 1rst segment number
mpi=$Npr # number of MPI procs (=0 for non MPI run)
mth=0    # number of OMP threads (=0 for non Multi-thread run)
exp='Output' #- experiment output dir

#- dir where to run mitgcmuv (batch job starts in home dir; need to "cd" to run dir):
runD="/run_folder/"
cd $runD

if test -r sgm_run ; then
  read num lastSgm < sgm_run
  echo "current Segment # = $num ; last segment to run = $lastSgm"
else
  echo "file sgm_run missing => stop"
  exit
fi
if [ $num -gt $lastSgm ] ; then
  echo "current segment ($num) exceed last segment ($lastSgm) to run"
  exit
fi

# These RunOpt commands are no longer needed: fixed with the CMDFILE stuff
#- coupled: select Command to run (EXE)
#-- Note: rely on specific order of procs from job "-l nodes" option
  NpAt=`expr $Npr - 1 - $NpOc`
  RunOpt="-np 1 ./bin/mitgcmuv.cpl"
  RunOpt="$RunOpt : -np $NpOc ./bin/mitgcmuv.ocn"
  RunOpt="$RunOpt : -np $NpAt ./bin/mitgcmuv.atm"
  EXE="mpirun $RunOpt"

rnkA=`expr 1 + $NpOc` ; rankA="rank_${rnkA}"
nItO=`egrep -i '^ *nTimeSteps *=' rank_1/data | tail -1 | sed 's/^.*nTimeSteps.*=//' | sed 's/,.*$//'`
nItA=`egrep -i '^ *nTimeSteps *=' $rankA/data | tail -1 | sed 's/^.*nTimeSteps.*=//' | sed 's/,.*$//'`
itOs=`egrep '^ *nIter0=' rank_1/data | sed 's/^ *nIter0=//'| sed 's/,$//'`
itAs=`egrep '^ *nIter0=' $rankA/data | sed 's/^ *nIter0=//'| sed 's/,$//'`
itOe=`expr $itOs + $nItO`
itAe=`expr $itAs + $nItA`
n1=`printf "%10.10i\n" $itOs` ; n2=`printf "%10.10i\n" $itOe`
echo " Ocean: itOs='$itOs' (sfx=$n1) , itOe='$itOe' (sfx=$n2)"
n1=`printf "%10.10i\n" $itAs` ; n2=`printf "%10.10i\n" $itAe`
echo " Atmos: itAs='$itAs' (sfx=$n1) , itAe='$itAe' (sfx=$n2)"

echo "==> run command: $EXE at: "`date`
eval $EXE
#mpirun.lsf

echo "" ; echo "==> run ended at: "`date`
outStatus=0;
nn=`printf "%10.10i\n" $itOe`
if test -f rank_1/pickup.${nn}.data ; then outStatus=`expr $outStatus + 1` ; fi
if test -f rank_1/pickup.${nn}.001.001.data ; then outStatus=`expr $outStatus + 1` ; fi
nn=`printf "%10.10i\n" $itAe`
if test -f $rankA/pickup.${nn}.data ; then outStatus=`expr $outStatus + 3` ; fi
if test -f $rankA/pickup.${nn}.001.001.data ; then outStatus=`expr $outStatus + 3` ; fi
if [ $outStatus -ne 4 ] ; then
 echo " missing some final pickup file (outStatus=$outStatus) ==> STOP"
 mv sgm_run sgm_run.err
 exit
fi
#----------------------------------------------

#----------------------------------------------
if [ $kpr -ge 1 ] ; then
 if test $num = $nfirst ; then
   echo "--> make dir $exp + sub-dir {pick,diag,inst}_ocn/atm"
   mkdir $exp
   ( cd $exp
    mkdir mnc_ocn mnc_atm
    mkdir pick_ocn pick_atm
   )
 fi
fi
#----------------------------------------------

#----------------------------------------------
if [ $kpr -ge 2 ] ; then
  echo "--> move Oce output to '$exp/tmp_ocn_$sfx'"
for nRank in {1..3}
do
  ( mv rank_$nRank/mnc_test_*/*         ./$exp/mnc_ocn/
    mv rank_$nRank/pickup*.0?????????.* ./$exp/pick_ocn/
    rm -r rank_$nRank/mnc_test_*
  )
done
for nRank in {4..27}
do
  echo "--> move Atm output to '$exp/tmp_atm_$sfx'"
  ( mv rank_$nRank/mnc_test_*/*         ./$exp/mnc_atm/
    mv rank_$nRank/*pickup*.0?????????.* ./$exp/pick_atm/
    rm -r rank_$nRank/mnc_test_*
  )
done
  #echo "--> move log files to '$exp/run_$sfx'"
  #mkdir $exp/run_$sfx
 #mv std_outp mf_run run_cpl.std* rank_{0,1,4}/*.clog $exp/run_$sfx
 #mv std_outp mf_run rank_{0,1,$rnkA}/*.clog $exp/run_$sfx
fi
#----------------------------------------------

#----------------------------------------------
if [ $kpr -ge 5 ] ; then
#- prepare for new run:

nn=`printf "%10.10i\n" $itOe`
echo "--> link Ocn pickup (sfx=$nn) into rank_1 and change nIter0 in 'data'"
( cd rank_1
  ln -s ../$exp/pick_ocn/pickup* .
  mv data data.tmp
  sed "/^ nIter0=/s/=.*,/=$itOe,/" data.tmp > data
  diff data data.tmp
)

cd $runD

for nRank in {2..3}
do
( cd rank_$nRank
  ln -s ../$exp/pick_ocn/pickup* .
)
done

nn=`printf "%10.10i\n" $itAe`
echo "--> link Atm pickup (sfx=$nn) into $rankA and change nIter0 in 'data'"
( cd $rankA
  ln -s ../$exp/pick_atm/pickup* .
  mv data data.tmp
  sed "/^ nIter0=/s/=.*,/=$itAe,/" data.tmp > data
  diff data data.tmp
)

cd $runD

for nRank in {4..27}
do
( cd rank_$nRank
  ln -s ../$exp/pick_atm/pickup* .
)
done


fi
#----------------------------------------------

if test -r sgm_run ; then
  read xx lastSgm < sgm_run
  echo "from file 'sgm_run', get last segment to run = $lastSgm"
else
  echo "file 'sgm_run' missing => stop"
  exit
fi
if test "$num" -lt "$lastSgm"
then
  #FastDiagnosticsNumber=`expr $lastSgm - 10`
  #if  test "$num" -ge "$FastDiagnosticsNumber"
  #then
  #  cp rank_4/data.diagnosticsFast rank_4/data.diagnostics
  #  cp rank_1/data.diagnosticsFast rank_1/data.diagnostics
  #  echo "Running with fast diagnostics now"
  #fi
  nn=`expr $num + 1`
  echo $nn $lastSgm > sgm_run
  echo "--> cat sgm_run :"
  cat sgm_run
  echo "--> Running script again :"
  sbatch run_cpl.slurm
else
  echo "this segment ($num) was the last segment ($lastSgm) to run"
  mv sgm_run sgm_run.end
fi
if [ $kpr -ge 6 ]
then
  bsub < run_cpl.bsub
fi

exit
