#!/usr/bin/perl

@names = ();

open(IN,"country_names.lst");
while(<IN>){
	chomp;
	push(@names,$_);
}
close(IN);

print "There are " . ($#names + 1) . "names.\n";

$val = pop(@names);
print "$val\n";
print "There are " . ($#names + 1) . "names.\n";

$val = shift(@names);
print "$val\n";
print "There are " . ($#names + 1) . "names.\n";

unshift(@names,"foo");
print "There are " . ($#names + 1) . "names.\n";

$str = join(",",@names);
$substr = substr($str, 0, 10);
print "${substr}...\n";

$names = split(/,/,$str);
print "There are " . ($#names + 1) . "names.\n";

