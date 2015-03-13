#!/usr/bin/perl/ 
#-----------------------------------
#Nombre:     primoG.pl
#Version:    1.0
#Fecha:  MARTES 05/06/2012
#Autor:  Juan Carlos Ramos c.i. 6233616
#Descripcion:   Pide numero y muestra si es primo o no
#
#
#Historial de Revision:
#       1.0/Fecha/:Version Original
#-----------------------------------
#
# Inicio de Programa -----------------------------------
print "\nPor favor, Ingrese Valor a evaluar si es primo o no: ";

$n=<STDIN>;
chomp$n;

# -- Inicializacion de las variables 
$i=$n;
$c=0;

# ---- En la condicion del for use una condicion compuesta para cortar
#      la evaluacion de los ciclos de numero grandes.
for($i=$n;($i > 0 && $c<3);$i=$i-1){
   # ---- print"\n$c  $i"; esta linea demuestra el corte
   if(($n%$i)==0) {$c=$c+1;}
}

# -- La salida de la evaluacion del valor
if($c==2){ print "\n\n\n **  $n Es Primo  **\n\n\n";}
else{ print "\n\n\n _ $n No es Primo _\n\n\n";}

#-----------------------------------