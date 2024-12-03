# [ File tree program ]

if [ $# -eq 1 ]
then
	curdir= `pwd`
	for dir in `echo $1 | tr '/' ' '`
	do
		if [ -d $dir ]
		then
			echo "$dir exists in `pwd`"
			cd $dir
		else
			mkdir $dir
			echo "$dir created in `pwd`"
			cd $dir
		fi
	done
	cd $curdir
else 
	echo "No arguements"
fi
