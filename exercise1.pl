#!/bin/perl -w
use strict;
use Bio::Factory::EMBOSS;

=begin comment
 Selected Desease: Parkinson
 URL: https://www.omim.org/entry/168600?search=parkinson&highlight=parkinson
 Selected Gene:    GIGYF2 gene (612003) -> 2q37
=cut

my $inputPath = "Exercise1/Input/GIGYF2.gb";
my $outputPath = "Exercise1/Output/orfs.fasta";

my $factory = new Bio::Factory::EMBOSS;
my $app = $factory->program("getorf");
my %input = ( -sequence => $inputPath, -find => 1, -reverse => 1, -minsize => 300, -outseq => $outputPath);
$app->run(\%input);