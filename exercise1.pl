#!/bin/perl -w
use strict;
use Bio::Seq; 
use Bio::SeqIO;
use Bio::Factory::EMBOSS;

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

# my $seqio_obj = Bio::SeqIO->new(-file => 'mRNA/GIGYF2.gb', 
#                              -format => 'genbank');

#Get the sequence of a genbank file and show on console
# while (my $seq = $seqio_obj->next_seq) {
#    print $seq->seq, "\n";
#    print $seq->display_id, "\n";
#    print $seq->length, "\n";
#    my $translated = $seq->translate( -orf => 1, -start => "atg", -complete => 1 );
#    print $translated->seq, "\n";
# }

my $factory = new Bio::Factory::EMBOSS;
my $app = $factory->program("getorf");
my %input = ( -sequence => "mRNA/GIGYF2.gb", -find => 1, -reverse => 1, -minsize => 300, -outseq =>
"orfs.fasta");
$app->run(\%input);