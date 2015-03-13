#!/usr/bin/perl

########################################################
#Nombre:    012-bisiesto.pl                            #
#Fecha:     06/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
# Un año es bisiesto si es divisible por 4 y no es    #
# por 100, o si es divisible por 400. Escribe un      #
# programa que lea un año y devuelva si es bisiesto   #
# o no.                                               #
# Se comprueba que el numero sea >= 1                 #
#######################################################

#Limpiamos la pantalla
print `clear`;

#Mensaje de Bienvenida
print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\tBienvenidos\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

#Solicitamos el ingreso del numero por teclado
#Verificamos que el valor sea => 0
do{
        print "Año a consultar: ";
        chomp($Year=<STDIN>);
} while($Year<1);

#Comprobacion
((!($Year%4) && $Year%100) || !($Year%400)) ? print "\nEs Bisiesto!" : print "\nNo es Bisiesto!";

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n"; 