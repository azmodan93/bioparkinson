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
my %input = ( -sequence => $inputPath, -find => 1, -reverse => 1, -minsize => 300, -outseq => "orfs.fasta");
$app->run(\%input);

=begin HowToRun + Explanation
Prerrequisitos:		Tener instalado Perl
					Tener instalado el paquete Bio::Factory::Emboss - 
					Puede hacerse mediante el gestor de paquetes Cpan con el comando force install Bio::Factory::Emboss
Para ejecutar el script se debe correr el comando perl exercise1.pl
Para resolver este problema, se utilizó la herramienta Emboss que lo que realiza es traducir un gen que recibe como input, con todas sus posibles orfs
tomando como tamaño mínimo el indicado por parámetro. Dicho resultado lo almacena en el archivo que recible por parámetro.
=cut