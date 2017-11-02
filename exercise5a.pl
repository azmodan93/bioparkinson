#!/bin/perl -w
use strict;
use Bio::Factory::EMBOSS;
use Bio::SeqIO;
use Data::Dumper;

=begin comment
 Selected Desease: Parkinson
 URL: https://www.omim.org/entry/168600?search=parkinson&highlight=parkinson
 Selected Gene:    GIGYF2 gene (612003) -> 2q37
=cut

my $inputPath = "Exercise1/Input/GIGYF2.gb";

my $io = Bio::SeqIO->new(-file => $inputPath, -format => "genbank" );
my $seq_obj = $io->next_seq();

my $inputSeq = $seq_obj->translate(-complete => 1, -orf => 1, -start => "atg");

my $factory = new Bio::Factory::EMBOSS;
my $app = $factory->program("pepnet");

my %input = ( -sequence => $inputSeq);
$app->run(\%input);

=begin HowToRun + Explanation
Prerrequisitos:		Tener instalado Perl
					Tener instalado el paquete Bio::Factory::Emboss - 
					Puede hacerse mediante el gestor de paquetes Cpan con el comando force install Bio::Factory::Emboss
Para ejecutar el script se debe correr el comando perl exercise5a.pl
Este programa dibuja un red en forma de hélice de la secuencia de proteínas que recibe como entrada.
=cut