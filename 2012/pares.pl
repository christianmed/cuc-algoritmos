#!/usr/bin/perl -w
#Nombre: pares.pl
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
print "Este te dice si un número es Par\n\n";

# Ingreso de Valor por teclado
print "Por favor Introduzca el número:";
$n=<STDIN>;
chomp$n;
#-----------------------------------

#-----------------------------------
# Operación de revisión a ver si es par
$m=0;
        $m=$n%2;        
        if ($m!=1){
                print "\nEl Número $n ES número par\n";
                }else{
                        print "\nEl Número $n NO es número par\n";
                }
#-----------------------------------