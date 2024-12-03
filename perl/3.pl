# { [ Lowercase to Uppercase ] }

if (@ARGV == 0) {
	print("No arguements");
}
else {
	foreach $arg (@ARGV) {
		$arg =~ tr/a-z/A-Z/;
		print("$arg\n");
	}
}
