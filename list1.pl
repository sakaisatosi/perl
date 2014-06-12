#!/usr/bin/perl

@names = ();

open(IN,"country_names.lst");
while(<IN>){
	chomp;
	push(@names,$_);
}
close(IN);

$str = substr("@names",0,30);
print "${str}...\n";
$num = $#names + 1;
print "There are $num names.\n";
print "The first name is $names[0].\n";
print "The last name is $names[$#names].\n";

for ($i = 0; $i < $#names+1; $i++) {
	print "$names[$i]\n";
}

foreach $name (@names){
	print "$name\n";
}