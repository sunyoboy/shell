{
  nf=NF
  for(x=1;x<=NF;x++) {
    matrix[NR,x]=$x
  }
}END{
  for(x=1;x<=NR;x++){
    for(y=1;y<=nf;y++){
      printf "%d ", matrix[x,y]
    }
    printf "\n"
  }
}
