#!/bin/perl -w
use strict;
use Bio::Seq; 
use Bio::SeqIO;
use Bio::Tools::Run::RemoteBlast;
use Data::Dump;
use Bio::Tools::Run::Alignment::Clustalw;

=begin comment
 Selected Desease: Parkinson
 URL: https://www.omim.org/entry/168600?search=parkinson&highlight=parkinson
 Selected Genes:  alpha-synuclein gene (SNCA; 163890) ->  4q22
				  UCHL1 gene -> 4p13
				  LRRK2 gene (609007) -> 12q12
				  GIGYF2 gene (612003) -> 2q37
				  HTRA2 gene (606441) -> 2p13
				  VPS35 gene (601501) -> 16q11
				  EIF4G1 gene (600495) -> 3q27
=cut

my $input = 'orfs.fasta';
my $compare = 'top10sequences.fasta';s

$factory = Bio::Tools::Run::Alignment::Clustalw->new(-matrix => 'BLOSUM');

$aln = $factory->align($input); 