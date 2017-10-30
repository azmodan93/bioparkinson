#!/bin/perl -w
use strict;
use Bio::Tools::Run::StandAloneBlastPlus;

=begin comment
 Selected Desease: Parkinson
 URL: https://www.omim.org/entry/168600?search=parkinson&highlight=parkinson
 Selected Gene:    GIGYF2 gene (612003) -> 2q37
=cut

my $inputPath = "Exercise1/Output/orfs.fasta";
my $outputPath = "Exercise2/Output/blastLocal.out"; 

#To run with local DB
=begin
my $fac = Bio::Tools::Run::StandAloneBlastPlus->new( 
	-db_name => 'swissprot',
  	-db_dir => 'Blastdb');
=cut
=begin remoteDB 
#To run with a remote DB
my $fac = Bio::Tools::Run::StandAloneBlastPlus->new(
  -db_name => 'swissprot',
  -remote  => 1);
=cut
my $factory = Bio::Tools::Run::StandAloneBlastPlus->new(
  -db_name => 'swissprot',
  -remote  => 1);

my $result = $factory->blastp( -query => $inputPath, 
			               -outfile => $outputPath);
