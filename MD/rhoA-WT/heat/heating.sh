#heating script
#sbatch runAmber_heat.sh INPUT PREV OUTPUT

sbatch runAmber_heat.sh h_nvt1  ../min/04_min 01_nvt
sbatch runAmber_heat.sh h_nvt2 01_nvt 02_nvt
sbatch runAmber_heat.sh h_nvt3 02_nvt 03_nvt
sbatch runAmber_heat.shh_nvt4 03_nvt 04_nvt
sbatch runAmber_heat.sh h_nvt5 04_nvt 05_nvt
sbatch runAmber_heat.sh h_nvt6 05_nvt 06_nvt
sbatch runAmber_heat.sh h_npt1 06_nvt 01_npt 
sbatch runAmber_heat.sh h_npt2 01_npt 02_npt
