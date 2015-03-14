#include <stdio.h>
#include <time.h>

extern int fibonacci(int x);

int main(int argc, char **argv)
{
  int number=0;
  int result=0;
  clock_t start, stop;

  scanf("%d",&number);
  start = clock();
  result = fibonacci(number);
  stop = clock();   
  printf("The fibonacci sequence at %d is: %d\n", number, result);
  printf("The execution time is %lf seconds.\n", (stop-start)/(double)(CLOCKS_PER_SEC));
}

