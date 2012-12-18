#!/usr/bin/perl -w
$,=' ';
$in=0;
$sum=0;
@arr=();
%lis=();
print 'Enter array : ';
chomp($in=<STDIN>);
@arr=split(' ',$in);
@arr=sort {$a <=> $b} @arr;
foreach $in (@arr)
{
	$lis{$in}++;
	$sum+=$in;
}
foreach $key (sort {$a <=> $b} keys %lis)
{
	print $key;
	print ' ' x ((length $arr[-1])-(length $key));
	print '| ';
	print '*' x $lis{$key};
	print "\n";
	$sum+=($key)*($lis{$key});
}
print @arr,"\n";
print "Max is $arr[$#arr] \n";
printf("Average is %.2f",$sum/@arr);