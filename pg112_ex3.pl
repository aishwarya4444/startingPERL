#!/usr/bin/perl -w
$in='';
@n=();
%name=();
while(1)
{
	print 'Enter name : ';
	chomp($in=<STDIN>);
	if($in eq '')
	{
		last;
	}
	@n=split(' ',$in);
	if($#n eq 1)
	{
		$name{$n[-1]}=$n[0];
	}
	else
	{
		$name{$n[-1]}=$n[0].$n[-2];
	}
}
foreach $key (sort keys %name)
{
	print $key,', ',$name{$key},"\n";
}