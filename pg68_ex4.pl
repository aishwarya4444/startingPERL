#!/usr/bin/perl -w
#string ko centre mein print karane kaa
$spaces=$len=0;
$str='';
print 'Enter string : ';
chomp($str=<STDIN>);
$len=length $str;
$spaces=40-(int $len/2);
print ' ' x $spaces;
print $str;
print "\n";