#argvs
BEGIN {
  for(i=0; i<ARGC; i++) {
    printf("ARGV[%d] is %s\n",i,ARGV[i])
  }
  printf("The number of arguments, ARGC=%d\n", ARGC)
}
