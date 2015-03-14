#!/usr/bin/perl

#######################################################
#Nombre:    017-costo-llamada.pl                      #
#Fecha:     13/03/2015                                #
#Versión:   0.1                                       #
#By:        Christian Medina                          #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Escribir un programa que permita determinar la      #
# cantidad total a pagar por una llamada telefónica   #
# de N minutos (introducido por el usuario), teniendo #
# en cuenta lo siguiente:                             #
#                                                     #
#  · Las llamadas de 5 minutos o menos tienen un      #
#    coste de 10 BsF.                                 #
#  · Cada minuto adicional a partir de los 5 primeros #
#    cuesta 2 BsF.                                    #
#######################################################

#Limpiamos la pantalla
print `clear`;

#Definicion de variables
my $Total=0;

#Mensaje de Bienvenida
print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\tBIENVENIDOS\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

print "==========-----------------------==========";
print "\n VERIFIQUE EL MONTO A PAGAR POR SU LLAMADA\n";
print "==========-----------------------==========\n\n";

#Solicitamos el ingreso del numero por teclado
print "Duracion de Llamada en Minutos: ";
chomp($min=<STDIN>);

#Si min es menor o igual a 5
if($min<=5){
	#se multiplica cada min por 10
    $Total=$min*10;
}
#Si min es mayor a 5
else{
	#A min se le restan 5, el resultado se multiplica por dos y se le suman 50 de los primeros 5 min
    $Total=(($min-5)*2)+50;
}

#Se muestra el resultado por pantalla
print "\nDEBE PAGAR Bs. $Total,00.";

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  ADIOS!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";