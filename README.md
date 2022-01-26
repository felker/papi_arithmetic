# PAPI 6 simple arithmetic example

Run on Midway3 [Intel Xeon Gold 6248R](https://en.wikichip.org/wiki/intel/xeon_gold/6248r)

- Constant overhead of 6x `DP_OPS` in each PAPI region, even if they are empty. 
- With `-O2`, compiler precomputes all answers at compile time. so all regions will return `"PAPI_DP_OPS":"8"` and a constant number of cycles. More cycles for the first region
- With `-O0`, `PAPI_DP_OPS = 6 + number of lines of single ops in each region`. Even after subtracting the first region overhead, division takes more cycles than multiplication which usually takes more cycles than addition (but are equivalent counts of double precision ops)


- [ ] Try with `rand()` inputs, loop over command line count 
- [ ] Try Intel compiler with `-no-prec-div`
