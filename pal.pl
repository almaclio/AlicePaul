#!/usr/bin/perl
#palindrome.pl, 8th question

my $file = $ARGV[0];
open my $data, $file or die ("Unable to open file");
my $pal = qr/(?: (\w) (?1) \g{-1} | \w? )/ix;

local $/ = '';

while (<$data>) {
    chomp;
    my ($header, @lines) = split "\n";
    my $data = join '', @lines;

    while ($data =~ /(?=($pal))/g) {
        print "$-[0] - $1\n" if length($1) > 5;
    }
}
