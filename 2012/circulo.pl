#!/usr/bin/perl/
#Nombre: Circulo.pl
#Version: 1.0
#Fecha: 22/05/2012
#Autor: Juan Carlos Ramos 
#Descripcion:
#Historial de Revision:
#       1.0/Fecha/:Version Original
#       1.1 24/05/2012 Alexis Arnal
#-----------------------------------

#-----------------------------------
# Limpiar la Pantalla
print ´clear´;

# Mostrar Mensaje de Bienvenida
print "Este Programa calcula el área de un círculo\n\n"

# Ingreso de Valor por teclado
print "Por favor Indique logitud del Diametro:";
$d=<STDIN>;
chomp$d;

# Cálculo del área
$area=(3.141516*$d**2)/4;

# Mostrar por pantalla resultado
print "\nEl Area del Circulo es $area\n";
#-----------------------------------