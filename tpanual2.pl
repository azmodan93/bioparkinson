#!/bin/perl -w
use strict;
use Bio::Seq; 
use Bio::SeqIO;
use Bio::Tools::Run::StandAloneBlastPlus;
use Data::Dump;

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

my $fac = Bio::Tools::Run::StandAloneBlastPlus->new( -db_name => 'mydb',
  -db_data => 'orfs.fasta',
  -create => 1
);

$fac->make_db;

my $result = $fac->blastp( -query => 'orfs.fasta', 
			               -outfile => 'blas.out');
