#!/usr/bin/perl/
#Nombre: Circulo.pl
#Version: 1.0
#Fecha: 22/05/2012
#Autor: Juan Carlos Ramos 
#Descripcion:
#Historial de Revision:
#       1.0/Fecha/:Version Original
#-----------------------------------

#-----------------------------------
print "\nPor favor Indique logitud del Diametro:";
$d=<STDIN>;
chomp$d;
$area=(3.141516*$d*$d)/4;
print "\nEl Area del Circulo es $area\n";
#-----------------------------------