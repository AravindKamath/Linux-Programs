# [ Reversing arguement ] 

if [ $# -eq 0 ]
then
	echo "No arguments"
	exit
fi
echo "Number of arguements = $#"
echo "Normal order"
num=1
for i in "$@"
do
	echo "arg$num is $i"
	num=`expr $num + 1`
done
echo "Reverse order"
num=$#
while [ $num -ne 0 ]
do
	eval echo "arg$num is \$$num"
	num=`expr $num - 1`
done 
