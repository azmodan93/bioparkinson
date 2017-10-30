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
my $dbPath = "Exercise2/Input/Blastdb"; 

#To run with local DB
my $factory = Bio::Tools::Run::StandAloneBlastPlus->new( 
	-db_name => 'swissprot',
  	-db_dir => $dbPath);

=begin remoteDB 
#To run with a remote DB
my $fac = Bio::Tools::Run::StandAloneBlastPlus->new(
  -db_name => 'swissprot',
  -remote  => 1);
=cut

my $result = $factory->blastp( 
	-query => $inputPath, 
	-outfile => $outputPath);

=begin HowToRun + Explanation
Prerrequisitos:		Tener instalado Perl
					Tener instalado el paquete Bio::Tools::Run::StandAloneBlastPlus
					Para utilizar la base de datos local, se debe instalar la db swissprot en la carpeta Blastdb ubicada en el directorio Exercise2/Input/
Para ejecutar el script se debe correr el comando perl exercise2.pl y previamente debe haber ejecutado el comando perl exercise1.pl, ya que la entrada de este script es
la salida del script mencionado.
Para resolver este problema, se utilizó la herramienta Blast+ para poder comparar con una base de datos descargada anteriormente de proteínas (swissprot), cuales secuencias
de proteínas que recibe como archivo de entrada, tiene similitudes, y qué porcentaje de aminoácidos son iguales. 
En esta resolución, se encuentra comentado el código que puede ser utilizado para realizar dicha comparación, sin descargar previamente la base de datos de la página del 
NBCI. A su vez, se encuentra la resolución del mismo ejercicio de forma remota en el archivo exercise2remote.pl.
=cut

=begin Result Explanation
En el informe que arroja dicho script podemos encontrar las secuencias con mayores similitudes con las secuencias recibidas como parámetro
de entrada. En dicho archivo encontraremos las seis secuencias que arrojó el script correspondiente al exercise1.pl comparadas con las secuencias
encontradas en la base de datos de swissprot con mayor porcentaje de similitud. 
Para realizar dicha explicación, tomaré la secuencia N° 2 que tiene mayor longitud y mayor cantidad de secuencias alineadas.
Query= NM_001103146_2 [198 - 4094] Homo sapiens GRB10 interacting GYF
protein 2 (GIGYF2), transcript variant 3, mRNA.
Podemos encontrar 93 secuencias con alineamientos significativos. El e-value es el N° de chance de alineamiento. Mientras más pequeño es dicho
número, mejor es la similitud. El primer resultado siempre será la misma secuencia, por lo que dicho valor va a ser cero y las siguientes con
valores muy pequeños corresponden a proteínas de la misma familia de la secuencia analizada.
=cut