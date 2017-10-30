#!/bin/perl -w
use strict;
use Bio::Tools::Run::RemoteBlast;

=begin comment
 Selected Desease: Parkinson
 URL: https://www.omim.org/entry/168600?search=parkinson&highlight=parkinson
 Selected Gene:    GIGYF2 gene (612003) -> 2q37
=cut

my $inputPath = "Exercise1/Output/orfs.fasta";
my $outputPath = "Exercise2/Output/";

my @params = ( 
    -prog => 'blastp',
    -data => 'swissprot',
    -expect => '1e-10',
    -readmethod => 'SearchIO');

my $factory = Bio::Tools::Run::RemoteBlast->new(@params);

$factory->set_url_base('https://blast.ncbi.nlm.nih.gov/Blast.cgi');

my $r = $factory->submit_blast($inputPath);

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
      my $filename = $outputPath.$result->query_name()."remoteBlast.out";
      $factory->save_output($filename);
      $factory->remove_rid($rid);
    }
  }
}

=begin HowToRun + Explanation
Prerrequisitos:   Tener instalado Perl
                  Tener instalado el paquete Bio::Tools::Run::RemoteBlast
Para ejecutar el script se debe correr el comando perl exercise2.pl y previamente debe haber ejecutado el comando perl exercise1.pl, ya que la entrada de este script es
la salida del script mencionado.
Este script resuelve el mismo problema que el script excercise2,pl, pero de forma remota completamente. Utiliza la api que provee NCBI para poder enviarle un 
archivo fasta para poder comparar con las bases de datos remota y luego se obtienen los informes de dicho análisis.
Genera un Informe por separado por cada uno de las secuencias que se encuentran en el archivo que se recibe como parámentro de entrada.
=cut