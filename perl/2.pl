# { [ Check if file is binary file or not ] }

print("Enter filename");
$file = <STDIN>;
chop($file);
if (-f $file) {
	print("$file exists\n");
	if (-B $file) {
		print("$file is a binary file\n");
	}
	else {
		print("$file is not a binary file\n");
	}
}
else {
	print("$file does not exist\n");
}
