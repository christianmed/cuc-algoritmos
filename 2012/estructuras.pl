#!/usr/bin/perl -w
#Nombre: estructuras.pl
#Version: 1.0
#Fecha: 22/05/2012
#Autor: Alexis Arnal 
#Descripcion:
#Historial de Revision:
#       1.0/Fecha/:Version Original
#-----------------------------------

#-----------------------------------
# Limpiar la Pantalla
print `clear`;

# Mostrar Mensaje de Bienvenida
print "Este programa muestra como utilizar estructuras DO, WHILE, FOR\n\n";

# Ciclo DO-WHILE
print "\n\nCICLO DO-WHILE\n\n";
$a=1;
$b=10;
do{
        print "$a";
        $a++;
}while($a<=$b);


# Ciclo WHILE
print "\n\nCICLO WHILE\n\n";
$c=1;
$d=10;

while($c<=$d){
        print "$c";
        $c++;
        }


# Ciclo UNTIL
print "\n\nCICLO UNTIL\n\n";
$e=1;
$f=10;

until($e>$f){
        print "$e";
        $e++;
        }

# Ciclo FOR
print "\n\nCICLO FOR\n\n";
$i=1;
$n=10;
for ($i;$i<=$n;$i++){
        print "$i";
        }       
#-----------------------------------

print "\n\n";