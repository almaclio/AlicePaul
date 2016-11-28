#!/usr/bin/perl
#largestexons.pl by Clio Karageorgiou, 5th question

my $file = "example.bed";

open my $data, $file or die ("Unable to open file");

my @larger;

while( my $line = <$data> ) {
    my @array = split /\s+/, $line;
	my @exons = split /,/, $array[10];
    @exons = sort { $a <=> $b } @exons;

	push @larger, $exons[-1];
}	

@larger = sort { $b <=> $a } @larger;


print "$larger[$_]\n" for (0..9);

Clios-MacBook-Air:Desktop Clio$ perl largestexons.pl test.fasta
7713
6885
6885
6532
6041
5966
5616
5601
5538
5367
