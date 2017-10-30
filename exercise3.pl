#!/bin/perl -w
use strict;
use Bio::SeqIO;
use Bio::Tools::Run::Alignment::Clustalw;
use Data::Dumper;
use List::Util 'max';

=begin comment
 Selected Desease: Parkinson
 URL: https://www.omim.org/entry/168600?search=parkinson&highlight=parkinson
 Selected Gene:    GIGYF2 gene (612003) -> 2q37
=cut

my $outputPath = "Exercise3/Output/msa.clustal";
my @seq_array = ();
my @sequences = ();

my $str = Bio::SeqIO->new(-file=> 'Exercise1/Output/orfs.fasta', -format => 'Fasta');
my $topTen = Bio::SeqIO->new(-file=> 'Exercise3/Input/top10sequences.fasta', -format => 'Fasta');

while ( my $seq = $str->next_seq() ) {
	push (@seq_array, $seq);
}

#Getting the largest sequence
my @maxSeq = grep { $_->length == max(map {$_->length } @seq_array) } @seq_array;

#Making the top ten array of sequences + analyzing sequence
push(@sequences, $maxSeq[0]);

#Fill array with the sequences of the top ten file
while ( my $seq = $topTen->next_seq() ) {
	push (@sequences, $seq);
}

my $factory = Bio::Tools::Run::Alignment::Clustalw->new(-matrix => 'BLOSUM', -outfile => $outputPath);

#Make the alignment
my $seq_array_ref = \@sequences;

my $aln = $factory->align($seq_array_ref); 

=begin HowToRun + Explanation
Prerrequisitos:		Tener instalado Perl
					Tener instalado el paquete Bio::Tools::Run::Alignment::Clustalw
Para ejecutar el script se debe correr el comando perl exercise3.pl y previamente debe haber ejecutado el comando perl exercise1.pl, 
ya que la entrada de este script es la salida del script mencionado.
Explicación: En el archivo top10sequences.fasta se encuentran las secuencias con mayor puntaje que se obtuvieron al analizar el blast de la secuencia
más larga del output del punto 1. Se creó un array de secuencias que contiene las que se encuentran en dicho archivo más la secuencia a evaluar más larga.
Luego se realizó el alineamiento de todas ellas con la herramienta Clustalw.
El resultado obtenido al ejecutar este script muestra el porcentaje de similitud de las secuencias evaluadas entre si. Las que mayor porcentaje tiene,
significa que tienen una historia evolutiva en común. Como por ejemplo se puede observar en el informe, entre la secuencas 1 y 3, hay un 95% de puntuación,
lo que quiere decir que tengan un parecido filogenético.
=cut