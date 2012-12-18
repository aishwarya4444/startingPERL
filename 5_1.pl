#!/usr/bin/perl -w
$,=' ';
$in=0;
$sum=0;
@arr=();
%lis=();
while(1)
{
	print 'Enter number : ';
	chomp($in=<STDIN>);
	if($in eq '')
	{
		last;
	}
	$lis{$in}++;
	$arr[@arr]=$in;
	$sum+=$in;
}
@arr=sort {$a <=> $b} @arr;
foreach $key ( sort {$a <=> $b} keys %lis)
{
	print $key;
	print ' ' x ((length $arr[-1])-(length $key));
	print '| ';
	print '*' x $lis{$key};
	print "\n";
}
print @arr,"\n";
print "Max is $arr[$#arr] \n";
printf("Average is %.2f",$sum/@arr);