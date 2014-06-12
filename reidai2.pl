#!/usr/bin/perl

print "ISBNコード : ";
$isbn = <STDIN>;
chomp($isbn);
$sum;
#print $isbn;	

if($isbn =~ /\D/){
	print "not ISBN";
}elsif($isbn =~ /(\d)(\d)(\d)(\d)(\d)(\d)(\d)(\d)(\d)(\d)/){
	$sum = $1*1+$2*2+$3*3+$4*4+$5*5+$6*6+$7*7+$8*8+$9*9;
	if($sum%11 == $10){
		print "right ISBN";
	}else{
		print "bad ISBN";
	}
}else{
	print "not macth";
}
