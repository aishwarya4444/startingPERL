#!/usr/bin/perl -w
$num=$sum=$count=$avg=0;
while(1)
{
	print 'Enter number : ';
	chomp($num=<STDIN>);
	if($num ne '')
	{
		$count++;
		$sum+=$num;
	}
	else
	{
		last;
	}
}
$avg=$sum/$count;
print "Sum is : $sum\n";
print "Count is : $count\n";
print "Avg is : $avg\n";
printf("Count is $count and Avg is %.2f",$avg);