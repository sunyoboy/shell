{dup[$2]++; 
  if(dup[$2]>1) { 
    name[$2]++
  }
}END{{print "The duplicates were "} for(i in name) {print i, name[i]}}
