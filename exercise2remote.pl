#!/bin/perl -w
use strict;
use Bio::Seq; 
use Bio::SeqIO;
use Bio::Tools::Run::RemoteBlast;

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
my $output = 'blastRemote.out';

my @params = ( -prog => 'blastp',
     -data => 'swissprot',
     -expect => '1e-10',
     -readmethod => 'SearchIO' );

my $factory = Bio::Tools::Run::RemoteBlast->new(@params);

my $r = $factory->submit_blast($input);

print STDERR "Esperando...";
while ( my @rids = $factory->each_rid ) {
  foreach my $rid ( @rids ) {
    my $rc = $factory->retrieve_blast($rid);
    if( !ref($rc) ) {
      if( $rc < 0 ) {
        $factory->remove_rid($rid);
      }
      print STDERR ".";
      sleep 5;
    } else {
      my $result = $rc->next_result();
      my $filename = $result->query_name()."\.out";
      $factory->save_output($filename);
      $factory->remove_rid($rid);
    }
  }
}