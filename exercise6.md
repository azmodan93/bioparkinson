# Ejercicio 6

Trabajo con Bases de Datos Biológicas.

a) A partir del gen o proteína de interés para ustedes dar su link a NCBI-Gene como una entrada de Entrez, por ej.: http://www.ncbi.nlm.nih.gov/gene/3630
Expliquen brevemente lo que hace la proteína y por qué la eligieron.

Para este trabajo utilizamos como base el gen GIGYF2. El link al mismo es: [https://www.ncbi.nlm.nih.gov/gene/26058](https://www.ncbi.nlm.nih.gov/gene/26058). 
Este gen está localizado en una región del cromosoma humano vinculado genéticamente a la enfermedad de Parkinson tipo 11. 
Contiene repeticiones del trinucleótido CAG y codifica una proteina que contiene varias zonas de residuos de poliglutamina. La misma se encuentra involucrada en la regulación del receptor de la tiroxina kinasa, incluyendo IGF1 y receptores de insulina. A su vez, actua como un represor de la iniciación del proceso de traducción. 
La enfermedad de Parkinson tipo 11 se caracteriza por ser una enfermedad neurodegenerativa que tiene como síntomas la bradicinesia ( lentitud para iniciar movimientos), temblores en reposo, rigidez muscular e inestabilidad en la postura. La patología implica la pérdida de neuronas dopaminérgicas en la sustancia negra y la presencia de cuerpos de Lewy (acumulaciones intraneuronales de proteínas) en las neuronas que sobreviven en varias zonas del cerebro.
Elegimos esta enfermedad ya que es una de las cuales no tiene cura alguna. Nos inquietamos al tratar de descubrir cuáles podrían ser las posibles causas de la misma. A su vez por ser la enfermedad que el famoso actor de la película "Volver al Futuro" experimenta actualmente.


b)  ¿Cuántos genes / proteínas homólogas se conocen en otros organismos? Utilicen la información que está en la base de datos de HomoloGene y en la bases de datos Ensembl . Describan los resultados en ambas bases de datos, y en qué se diferencian. Mencionen sobre qué tan común creen son estos  genes o proteínas y a qué grupos taxonómicos pertenecen (sólo en las bacterias, en los vertebrados, etc.)

En la base **HomoloGene** encontramos homólogos en 9 especies además del _Homo sapiens_, todos ellos vertebrados siendo los más similares el del chimpancé (99.6%) y el del mono rhesus (98.2%). En la base **Ensembl**, obtuvimos homólogos en 83 especies, de las cuales 79 son vertebrados, entre estos resultados los más similares son nuevamente el del chimpancé (99.39%), el gorilla (99.32%), el mono tití (98.25%), el orangután (98.77%) y, al igual que en HomoloGene, el mono rhesus (97.69%), y los menos similares son los 4 no vertebrados, todos teniendo menos de 35% de similitud.
Como se puede ver la base de datos Ensembl no solo parece ser más extensa, tendiendo datos de muchas más especies (al menos con respecto a este gen), sino que también provee un reporte por medio de su página web mucho más detallado, permitiendo ver fácilmente en qué grupos taxonómicos se presenta el gen por medio de su árbol.
De acuerdo a los datos obtenidos y teniendo en cuenta que Ensembl posee información de 95 especies de vertebrados, los homólogos encontrados representan alrededor del **83.16%** del grupo de los vertebrados, por lo que concluimos que el gen parece ser relativamente común, al menos dentro de los datos limitados que tenemos, la realidad es que existen alrededor de 57000 especies de vertebrados, por lo que los 95 de Ensembl no son tan representativos para llegar a una conclusión certera.


c) ¿Cuántos transcriptos y cuántas formas alternativas de splicing son conocidos para este gen / proteína? ¿Cuáles de estos splicing alternativos se expresan? ¿Tienen funciones alternativas? Buscar evidencia de esto en las base de datos de NCBI y en los transcriptos de Ensembl  ¿Cómo el número de splicings alternativos diferente entre las dos bases de datos y cuál piensan que es más precisa y por qué?

En **Ensembl** encontramos 46 transcripts para el gen GIGYF2, 23 de los cuales son no codificantes y 23 codificantes de proteína, estos codifican 20 isoformas (variante de proteína) distintas que varían en el rango de 13aa - 1321aa. En la base **Nucleotide** de NCBI pudimos encontrar 8 variantes del gen, 4 RNA no codificante y 4 mRNA, de estas la primer variante codea la _isoforma a_ (1320aa), la mas larga, las variantes 2 y 3 codean la _isoforma b_ (1299aa), y la variante 4 codea la _isoforma c_ (1293aa), a pesar de la diferencia en sus tamaños, no pudimos encontrar mención de diferencias en su funcionamiento.
En cuanto a las diferencias entre las bases de datos, las tres isoformas que encontramos en la base de NCBI también se encuentran en Ensembl, y ésta además tiene otras 17 isoformas, por lo que creemos que esta base es más completa al menos en cuanto respecta al splicing de este gen.


d) ¿Con cuántas otras proteínas interactúa el producto génico de su gen? ¿Existe un patrón o relación entre las interacciones? Mencione las interacciones interesantes o inusuales. Usted encontrará las interacciones de su gene/proteína tanto en la base de datos NCBI Gene como en la base de datos UniProt . Compare las dos tablas entre sí. ¿Hay proteínas que interactúan únicas para cada tabla?


e) Expliquen brevemente de qué componente celular forma parte su proteína (pista: se puede estudiar la información de Gene Ontology - GO), ¿A qué procesos biológicos pertenece (pista idem)? y ¿En qué función molecular trabaja esta proteína? Los términos ontológicos de genes los pueden encontrar tanto en NCBI Gene y en la base de datos UniProt como haciendo una búsqueda en AmiGO.

1. Componentes celulares de los que forma parte
   * Citosol
   * Retículo endoplásmico
   * Endosoma
   * Aparato de Golgi
   * Gránulo de estrés citoplásmico
   * Componente integral de la membrana
   * Pericarion
   * Complejo de proteínas
   * Dendrita proximal
   * Vesícula
   
2. Función molecular en que trabaja
   * RNA binding
   * Protein binding
   * Cadherin binding
   * Proline-rich region binding
   
3. Procesos biológicos a los que pertenece
   * Feeding behavior
   * Adult locomotory behavior
   * Post-embryonic development
   * Posttranscriptional gene silencing
   * Negative regulation of translation
   * Spinal cord motor neuron differentiation
   * Mitotic G1 DNA damage checkpoint
   * Multicellular organism growth
   * Cellular protein metabolic process
   * Insulin-like growth factor receptor signaling pathway
   * Homeostasis of number of cells within a tissue
   * Musculoskeletal movement
   * Neuromuscular process controlling balance
   * mRNA destabilization


f) Discutan brevemente en qué estructura o vías metabólicas específicas (pathways) estaría participando su gen / proteína? (Reactome, KEGG son algunas bases de datos de pathways).


g) Entrar en la base de datos de variantes genéticas dbSNP e intentar interpretar o encontrar info sobre alguna variante (reference SNP - rsXXXX) asociada con la patología investigada en su gen de interés. ¿Qué variante es? ¿Hay información sobre la frecuencia que tiene esta variante en la población? ¿Qué grupo étnico parece ser el más afectado?
 
NOTA: Para hacer este ejercicio les pueden servir algunas otras bases de datos como:
http://www.genecards.org
http://www.ncbi.nlm.nih.gov/clinvar/   (para obtener información clínica del gen y sus variantes)
https://ghr.nlm.nih.gov
