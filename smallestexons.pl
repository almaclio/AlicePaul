#!/usr/bin/perl
#smallestexons.pl by Clio Karageorgiou, 4th question

my $file = "example.bed";

open my $data, $file or die ("Unable to open file");


while( my $line = <$data> ) {
	my @array = split /\s+/, $line;
	my @exons = split /,/, $array[10];
	@exons = sort { $a <=> $b } @exons;


	print "$exons[0]\n";
}

Output:
Clios-MacBook-Air:Desktop Clio$ perl smallestexons.pl example.bed
322
125
19
57
57
57
57
57
72
72
892
52
1439
60
206
62
