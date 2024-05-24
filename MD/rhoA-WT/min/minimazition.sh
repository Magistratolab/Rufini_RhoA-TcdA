#Minimaztion procedure 
#sbatch runAmber_min.sh INPUT PREV OUTPUT

sbatch runamaber.sh min-wat  ../../parm/tcdA_wat 01_min
sbatch runamaber.sh min-hyd  01_min 02_min
sbatch runamaber.sh min-sid 02_min 03_min
sbatch runamaber.sh min-all 03_min 04_min
