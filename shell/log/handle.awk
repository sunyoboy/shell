#!/bin/awk -f
/INSERT/{print  $0}
/UPDATE/{print  $0}
