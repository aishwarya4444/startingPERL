#!/usr/bin/perl -w
$,=' ';
$in=0;
$sum=0;
@arr=();
while(1)
{
	print 'Enter number : ';
	chomp($in=<STDIN>);
	if($in eq '')
	{
		last;
	}
	$arr[@arr]=$in;
	$sum+=$in;
}
@arr=sort {$a<=>$b} @arr;
print @arr,"\n";
print "Max is $arr[$#arr] \n";
printf("Average is %.2f",$sum/@arr);