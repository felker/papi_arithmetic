#include<stdio.h>
#include<stdlib.h>
#include<papi.h>

void handle_error(int errcode);

int main() {
  int ret;
  double a = 9238439.323;
  double b = 234123.114;
  double c;
    
  /* float rtime; float ptime; long long flpops; float mflops; */
  
  /* int output = PAPI_flops_rate(PAPI_DP_OPS,&rtime,&ptime,&flpops,&mflops); */
  /* if (output<PAPI_OK){ */
  /*   printf("There was an error first %d \n",output);} */
  /* double c; */

  ret = PAPI_hl_region_begin("divide");
  /* if ( ret != PAPI_OK ) */
  /*   handle_error(ret);   */
  c = a/b;
  ret = PAPI_hl_region_end("divide");
  /* if ( ret != PAPI_OK ) */
  /*   handle_error(ret); */
  printf("c = %lf\n", c);
  
  ret = PAPI_hl_region_begin("multiply");
  c = a*b;
  ret = PAPI_hl_region_end("multiply");  
  printf("c = %lf\n", c);
  
  ret = PAPI_hl_region_begin("add");
  c = a+b;
  ret = PAPI_hl_region_end("add");  
  printf("c = %lf\n", c);
  
  /* output = PAPI_flops_rate(PAPI_SP_OPS,&rtime,&ptime,&flpops,&mflops); */
  /* printf("mflops: %f\n",mflops); */
  /* if (output<PAPI_OK){ */
  /*   printf("There was an error second %d \n",output);} */
  return 0;
}


void handle_error (int retval){
     printf("PAPI error %d: %s\n", retval, PAPI_strerror(retval));
     exit(1);
}
