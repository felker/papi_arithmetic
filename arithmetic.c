#include<stdio.h>
#include<stdlib.h>
#include<papi.h>

void handle_error(int errcode);

int main() {
  int ret;
  double a = 9238439.323;
  double b = 234123.114;
  double r= 27483.098;
  double s= 83.555;
  double t= 3281.96;
  double c, d, e, f, g;

  /* float rtime; float ptime; long long flpops; float mflops; */

  /* int output = PAPI_flops_rate(PAPI_DP_OPS,&rtime,&ptime,&flpops,&mflops); */
  /* if (output<PAPI_OK){ */
  /*   printf("There was an error first %d \n",output);} */
  /* double c; */

  ret = PAPI_hl_region_begin("divide");
  if ( ret != PAPI_OK )
    handle_error(ret);
  c = a/b;
  d = r/b;
  e = a/r;
  f = s/t;
  g = r/t;
  ret = PAPI_hl_region_end("divide");
  if ( ret != PAPI_OK )
    handle_error(ret);
  printf("c = %lf\n", c);
  printf("d = %lf\n", d);
  printf("e = %lf\n", e);
  printf("f = %lf\n", f);
  printf("g = %lf\n", g);

  ret = PAPI_hl_region_begin("multiply");
  c = a*b;
  c = c*b;
  ret = PAPI_hl_region_end("multiply");
  printf("c = %lf\n", c);

  ret = PAPI_hl_region_begin("add");
  c = a+b;
  c = c+a;
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
