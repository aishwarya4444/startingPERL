#!/usr/bin/perl -w
$cookie='';
while($cookie ne 'cookie')
{
	print 'Give me a cookie : ';
	chomp($cookie=<STDIN>);
}
print 'mmmmmmm COOKIE !';