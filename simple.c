#include<stdio.h>
#include<stdlib.h>
#include"myutils.h"
int main()
{
  int a,b,c,d;
  a=10,b=20;  
  c=sum(a,b);
  d=square(a);
  //int res = a++ * a++;
  int *ptr = malloc(100);
  printf("c=%d,d=%d\n",c,d);
  free(ptr);
  return 0;
}
