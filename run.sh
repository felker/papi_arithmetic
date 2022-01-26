#!/usr/bin/env bash

# papi_avail --l1
module load papi
make
export PAPI_EVENTS="PAPI_DP_OPS,PAPI_TOT_CYC"
# papi_event_chooser check for mutually-exclusive counters for simultaneous runs:
#export PAPI_EVENTS="PAPI_L1_DCM,PAPI_LD_INS"
#export PAPI_OUTPUT_DIRECTORY="" #default is current dir
#export PAPI_MULTIPLEX=1 # https://linux.die.net/man/3/papi_multiplex_init
./arithmetic
