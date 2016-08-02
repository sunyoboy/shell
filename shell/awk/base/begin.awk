#FS字段分隔符，OFS输出分割符， ORS输出记录分隔符
BEGIN{FS=":";OFS="\t";ORS="\n\n"}{print $1, $2, $3}
