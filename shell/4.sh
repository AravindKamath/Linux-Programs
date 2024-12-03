# Simple Calculator ]

echo "Choice\n+:Add\n-:Sub\n*:Mul\n/:Div\n"
echo "Enter 2 numbers"
read a
read b
echo "Enter choice"
read ch
case $ch in
'+' ) y=`expr $a + $b`
echo "Sum = $y";;
'-' ) y=`expr $a - $b`
echo "Diff = $y";;
'*' ) y=`expr $a \* $b`
echo "Prod = $y";;
'/' ) y=`expr $a / $b`
echo "Quot = $y";;
* ) echo "Invalid choice";;
esac
