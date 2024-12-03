# { [ Sum of digits ] }
die("You have not entered arguement") if (@ARGV == 0);
foreach $num (@ARGV) {
	$original = $num;
	until ($num == 0) {
		$dig = $num % 10;
		$sum = $sum + $dig;
		$num = int($num / 10);
	}
	print("Sum of digits of $original = $sum");
}
