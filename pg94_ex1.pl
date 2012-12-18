#!/usr/bin/perl -w
$,=' ';
print 'Enter num1 : ';
chomp($num1=<STDIN>);
print 'Enter num2 : ';
chomp($num2=<STDIN>);
if($num1>$num2)
{
	($num1,$num2)=($num2,$num1);
}
@arr=($num1 .. $num2);
print @arr;
