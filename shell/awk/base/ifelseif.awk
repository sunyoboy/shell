{
  if($3 > 89 && $3 < 101) Agrade++
  else if($3 > 79) Bgrade++
  else if($3 > 69) Cgrade++
  else if($3 > 59) Dgrade++
  else Fgrade++
}END{
  print "The number of failures is " Fgrade
}
