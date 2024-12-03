# [ Converting filename from lowercase to uppercase ]

if [ $# -eq 0 ]
then
	echo "No arguements"
	exit
fi
for file in "$@"
do
	if [ -f $file ]
	then
		ufile=`echo $file | tr '[a-z]' '[A-Z]'`
		if [ -f $ufile ]
		then
			echo "$ufile exists"
			
		else
			mv $file $ufile
		fi
		echo "Initial file name $file"
		q=`ls -l $ufile`
		echo "$q"
	else
		"$file does not exist"
	fi
done
	
 
