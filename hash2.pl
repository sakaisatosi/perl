#!/usr/bin/perl

%hash = ('apple' => 100, 'orange' => 50, 'melon' => 1000, 'banana' => 200);

print "Alphabetical sort...\n";
foreach $fruit (sort keys %hash){
	print "$fruit => $hash{$fruit}\n";
}


print "\nSort by prices...\n";
foreach $fruit (sort {$hash{$a} <=> $hash{$b}} keys %hash){
	print "$fruit => $hash{$fruit}\n";
}