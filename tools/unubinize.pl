#!/usr/bin/perl

$fname = shift;
die unless -f "$fname";

open(IN, "< $fname") || die;
binmode(IN);

open(OUT, ">$fname.out") || die;
binmode(OUT);

die unless seek(IN, 0x040000, 0);

while (!eof(IN))
{
	die unless read(IN, $data, 0x000800) == 0x000800;

	$n = read(IN, $data, 0x01f800);
	die unless $n > 0;
	die unless syswrite(OUT, $data) == $n;

	last unless $n == 0x01f800;
}

close(IN); 
close(OUT);

exit 0;
