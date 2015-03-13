#!/usr/bin/perl -w
#Nombre: Circulo.pl
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
print "Este te dice si un número es Primo\n\n";

# Ingreso de Valor por teclado
print "Por favor Introduzca el número:";
$n=<STDIN>;
chomp$n;
#-----------------------------------

#-----------------------------------
# Operación de revisión a ver si es primo
$i=1;
$m=0;
$p=0;
for ($i;$i<=$n;$i++){
        $m=$n%$i;       
        if ($m==0){
                $p++;
                }
        }       
#-----------------------------------
#-----------------------------------
# Mostrar por pantalla resultado
if ($p==2){
        print "\nEl Número $n ES número primo\n";
        }else{
                print "\nEl Número $n NO es número primo\n";
                }
#-----------------------------------