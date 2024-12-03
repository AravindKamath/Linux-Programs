# Copy a string n times

print("Enter string");
$a = <STDIN>;
print("Number of times to repeat string");
chop($b = <STDIN>);
$c = $a x $b;
print("\n$c");
