#!/usr/bin/perl -w
$,=' ';
@arr1=();
@arr2=();
@arr3=();
$in=0;
print 'Enter 1st array : ';
chomp($in=<STDIN>);
@arr1=split(' ',$in);
print 'Enter 2nd array ; ';
chomp($in=<STDIN>);
@arr2=split(' ',$in);
foreach $c1 (@arr1)
{
	foreach $c2 (@arr2)
	{
		if($c1 eq $c2)
		{
			$arr3[@arr3]=$c1;
			last;
		}
	}
}
print @arr3;
