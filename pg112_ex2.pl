#!/usr/bin/perl -w
$,=' ';
$in='';
@arr=();
print 'Enter string : ';
chomp($in=<STDIN>);
@arr=split(' ',$in);
print 'No. of characters : ',length $in,"\n";
print 'No. of words : ',$#arr+1,"\n";
print 'Reverse : ',reverse @arr;