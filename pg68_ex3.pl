#!/usr/bin/perl -w
$str=$input='';
while(1)
{
	print 'Enter word : ';
	chomp($input=<STDIN>);
	if($input ne '')
	{
		$str.=$input.' ';
	}
	else
	{
		last;
	}
}
print 'Final string : ',$str;