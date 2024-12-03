# { [ File permissions ] }

display_perm() {
	r=`ls -l $1 | cut -c2`
	w=`ls -l $1 | cut -c3`
	x=`ls -l $1 | cut -c4`
	echo "Owner permissions"
	if [ $r = 'r' ]
	then
		echo "READ"
	else 
		echo "NO READ"
	fi
	if [ $w = 'w' ]
	then
		echo "WRITE"
	else 
		echo "NO WRITE"
	fi
	if [ $x = 'x' ]
	then
		echo "EXECUTE"
	else 
		echo "NO EXECUTE"
	fi
	
	r=`ls -l $1 | cut -c5`
	w=`ls -l $1 | cut -c6`
	x=`ls -l $1 | cut -c7`
	echo "Group permissions"
	if [ $r = 'r' ]
	then
		echo "READ"
	else 
		echo "NO READ"
	fi
	if [ $w = 'w' ]
	then
		echo "WRITE"
	else 
		echo "NO WRITE"
	fi
	if [ $x = 'x' ]
	then
		echo "EXECUTE"
	else 
		echo "NO EXECUTE"
	fi
	
	r=`ls -l $1 | cut -c8`
	w=`ls -l $1 | cut -c9`
	x=`ls -l $1 | cut -c10`
	echo "Other permissions"
	if [ $r = 'r' ]
	then
		echo "READ"
	else 
		echo "NO READ"
	fi
	if [ $w = 'w' ]
	then
		echo "WRITE"
	else 
		echo "NO WRITE"
	fi
	if [ $x = 'x' ]
	then
		echo "EXECUTE"
	else 
		echo "NO EXECUTE"
	fi
}

echo "Enter filenames"
read f1
read f2
if [ -e $f1 -a -e $f2 ]
then
	p1=`ls -l $f1 | cut -c2-10`
	p2=`ls -l $f2 | cut -c2-10`
	if [ "$p1" = "$p2" ]
	then
		echo "$f1 and $f2 have same permissions"
		display_perm $f1
	else
		echo "Permissions of $f1"
		display_perm $f1
		echo "Permissions of $f2"
		display_perm $f2
	fi
else
	echo "Files do not exist"
fi
