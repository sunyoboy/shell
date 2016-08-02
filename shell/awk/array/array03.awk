#{
#  for(item in array) {
#    print array[item]
#  }
#}
/^Tom/{name[NR]=$1}END{for(i=1;i<=NR;i++)print name[i]}
