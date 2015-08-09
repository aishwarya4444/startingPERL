#!/usr/bin/perl -w
use DBI;
use strict;

my $db="mysql";
my $user="root";
my $password="123456";
my $dbh=DBI->connect( "DBI:mysql:host->localhost:database=$db", "$user", "$password", {PrintError=>0, RaiseError=>0})
    or
    die("Failed connecting to database. (error number $DBI::err): $DBI::errstr\n");

my $query="SELECT host FROM user;";
my $sth=$dbh->prepare($query);
$sth->execute();
while(my $ref=$sth->fetchrow_hashref())
{
	printf("%s\n",$ref->{host});
}
$sth->finish();
$dbh->disconnect();
