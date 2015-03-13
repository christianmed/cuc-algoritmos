#! \usr\bin\perl
# Juan Carlos Ramos Noguera
# Factorial de un Numero

print "Numero a calcular Factoial: ";
chomp($n=<STDIN>);
$p=1;           # Inicializo $p en 1 para que el calculo por
                # por cero me de 1.

#$i=0;          # Pense que el que el ciclo for
                # necesitaba inicializar por ello declare $1 y la inicialice, pero no hace falta.
                # luego la comente pues no hace falta en el ciclo for se inicaliza.

#print "$n\n";  # para comprobar los valores
#print "$p\n";  # los mande a imprimir luego los
#print "$i\n";  # puse como comentarios.


# Asi fue mi logica en el examen waooo no vi el problema..!
for($i=$n; $i<=1; $i=$i-1){
   $p = $p * $i;
   print "\n pro $i\n";
   }
print " Factorial de $n es $p";

# Debi hacer esto en el exame usar otro metodo por terco no lo probe
# solo porque queria hacerlo como yo pensaba, a un cuando lo sabia hacer.

$p=1;                  # $p se debe inicializar siempre para
                       # no arrastrar el valor del calculo anterior
for($i=1; $i<=$n; $i=$i+1){
   $p = $p * $i;
   print "\n sdo $i\n";
   }
print " Factorial de $n es $p";

# es asi como deberia de ser lo que yo queria.


$p=1;                  # $p se debe inicializar siempre para
                       # no arrastrar el valor del calculo anterior
for($i=$n; $i>0; $i=$i-1){
   $p = $p * $i;
   print "\n tro $i\n";
   }
print " Factorial de $n es $p";
#-----------------Fin ---------