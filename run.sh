#!/usr/bin/env bash

module load papi
make
export PAPI_EVENTS="PAPI_DP_OPS,PAPI_L1_DCM,PAPI_LD_INS"
