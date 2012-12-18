#!/usr/bin/perl -w
$c=$f=0;
print 'Enter temperature in farenheit : ';
chomp($f=<STDIN>);
$c=($f-32)*5/9;
print "Celsius is : $c";