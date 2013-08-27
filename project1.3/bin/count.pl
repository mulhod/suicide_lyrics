#!/usr/bin/perl
use strict;
use diagnostics;
use warnings;
use Data::Dumper;

print "What words would you like to search for?  Press enter twice to finish.\n";
my @arr = ();
while (<STDIN>) {
  chomp($_);
  last if ($_ eq '');
  push(@arr, $_);
}
@arr=uniq(@arr);
my %hash = map { $_ => 0 } @arr;

print "You entered:\n";
print Dumper \%hash;

my @files = <./*>;	#better to make this relative
foreach my $file (@files) 
{
	print "OPENED $file\n";
	open (FILE, "<$file");
	while (my $line = <FILE>) {
		foreach my $key (keys %hash) {
		#print "$key ";
		if ($line =~ (/\b\Q$key\E\b/i)) {		
				$hash{$key}++;
				
			}#if
		}#foreach
	}#while
close $file;
print "Closed $file. Current standing:\n";
print Dumper \%hash;
}#for


sub uniq {
    return keys %{{ map { $_ => 1 } @_ }};
}