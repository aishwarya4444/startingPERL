#!/usr/bin/perl -w
$in=$fn=$ln='';
%name=();
while(1)
{
	print 'Enter name : ';
	chomp($in=<STDIN>);
	if($in eq '')
	{
		last;
	}
	($fn,$ln)=split(' ',$in);
	$name{$ln}=$fn;
}
foreach $key (sort keys %name)
{
	print $key,', ',$name{$key},"\n";
}