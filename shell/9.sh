# [ String operations ]

echo "String operations\n1.Length\n2.Position of character\n3.first 3 letters\n4.Last 3 letters\n"
echo "Input string"
read str
echo "enter choice"
read ch
case $ch in
	'1' )
	echo "Entered string $str"
	if [ -z $str ]
	then
		echo "Null string"
	else
		z=`expr "$str" : '.*'`
		echo "Length of string = $z"
	fi;;
	'2' ) 
	echo "Enter character"
	read ch
	z=`expr "$str" : '[^'$ch']*'$ch''`
	echo "$z";;
	'3' )
	z=`expr "$str" : '\(...\).*'`
	echo "first 3 characters $z";;
	'4' )
	z=`expr "$str" : '.*\(...\)'`
	echo "Last 3 characters $z";;
	* )
	echo "Invalid";;
esac 
