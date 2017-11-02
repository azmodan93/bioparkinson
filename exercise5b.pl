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

my $inputPath = "Exercise1/Output/orfs.fasta";
my $outputPath = "Exercise5/Output/out.patmatmotifs";
my $dbPath = "Exercise5/Prosite/";

my $factory = new Bio::Factory::EMBOSS;

my $dbApp = $factory->program("prosextract");
$dbApp->run({-prositedir => $dbPath});

my $app = $factory->program("patmatmotifs");

my %input = ( -sequence => $inputPath, -outfile => $outputPath, -full => 1);
$app->run(\%input);

=begin HowToRun + Explanation
Prerrequisitos:		Tener instalado Perl
					Tener instalado el paquete Bio::Factory::Emboss - 
					Puede hacerse mediante el gestor de paquetes Cpan con el comando force install Bio::Factory::Emboss
					Descargar en la carpeta Exercise5/Prosite/ los archivos prosite.doc y prosite.dat
Para ejecutar el script se debe correr el comando perl exercise5b.pl. Debe ejecutarse con permisos de administrador, ya que este script a su vez
setea la base de datos de Prosite para poder utilizar la herramienta patmatmotifs que realizará el análisis de dominios de las secuencias de aminoácidos
que recibe como parámetro de entrada.
=cut-