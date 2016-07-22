BEGIN { count = 0 }
{ line = getLine($0) }

function getLine(line) {
    if ( line ~ /INSERT/) { 
		count++ 
		print $6
	}
    return count
}
END{ print "The count of line is " count "."}
