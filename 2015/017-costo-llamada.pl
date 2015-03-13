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

if($min<=5){
    $Total=$min*10;
}
else{
    $Total=50+(($min-5)*2);
}

print "\nDEBE PAGAR Bs. $Total,00.";

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  ADIOS!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";