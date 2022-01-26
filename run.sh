#!/usr/bin/env bash

# papi_avail --l1
module load papi
make clean
make
export PAPI_EVENTS="PAPI_DP_OPS,PAPI_TOT_CYC"
#export PAPI_EVENTS="PAPI_L1_DCM,PAPI_LD_INS"
# papi_event_chooser check for mutually-exclusive counters for simultaneous runs:
# https://www.cs.uoregon.edu/research/tau/docs/newguide/ch03s06.html

#export PAPI_OUTPUT_DIRECTORY="" #default is current dir
#export PAPI_MULTIPLEX=1 # https://linux.die.net/man/3/papi_multiplex_init
./arithmetic
