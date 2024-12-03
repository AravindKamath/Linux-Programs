# Greatest Smallest of 3 numbers ]

echo "Enter 3 numbers"
read x
read y
read z
if [ $x -gt $y ] && [ $x -gt $z ]
then 
echo "$x is largest"
elif [ $y -gt $x ] && [ $y -gt $z ]
then 
echo "$y is largest"
else
echo "$z is largest"
fi
if [ $x -lt $y ] && [ $x -lt $z ]
then 
echo "$x is smallest"
elif [ $y -lt $x ] && [ $y -lt $z ]
then 
echo "$y is smallest"
else
echo "$z is smallest"
fi
