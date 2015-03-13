#!/usr/bin/perl -w
#Nombre: factorial.pl
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
print "Este programa calcula el Factorial de un número\n\n";

# Ingreso de Valor por teclado
print "Por favor Introduzca el número:";
$n=<STDIN>;
chomp$n;
#-----------------------------------

#-----------------------------------
# Operación para calcular factorial
$i=1;
$f=1;
while($i<=$n){
        $f=$f*$i;
        $i++;
        print "\n$f\n";
 
        }

print "\nEl Número Factorial de $n es $f\n";
#-----------------------------------