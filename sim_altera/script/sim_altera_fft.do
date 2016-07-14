cd ./
# setup simulation enviornment
source ./msim_setup.tcl 

# start simulation
ld_debug           
     
# load waveform
do altera_wave.do              

# runing simulation
run 4.5ms