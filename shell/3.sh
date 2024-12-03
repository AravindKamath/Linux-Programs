# File patterns using cmd line and user i/p ]

if [ $# -eq 0 ]
then
	echo "Enter pattern and filename"
	read pattern
	read filename
	grep "$pattern" $filename
else
	grep "$1" $2
fi
