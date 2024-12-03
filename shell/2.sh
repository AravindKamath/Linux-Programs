# Divisible by Divisor using cmd line and user i/p ]

if [ $# -eq 0 ]
then
	echo "Enter divident and divisor"
	read divident
	read divisor
	y=`expr $divident % $divisor`
else
	y=`expr $1 % $2`
fi

if [ $y -eq 0 ]
then
	echo "Divisible"
else
	echo "Not Divisible"
fi
