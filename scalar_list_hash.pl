#!/usr/bin/perl -w
$,=' ';
%lis=qw(1 one 2 two 3 three 4 four 5 five 6 six);
foreach $key (sort {$a<=>$b} keys %lis)
{
	print $key,' ',$lis{$key},"\n";
}
print %lis,"\n";
@arr=%lis;
print @arr,"\n";
$sc=%lis;
print $sc;