#!/usr/bin/perl

#######################################################
#Nombre:    001-par-impar.pl                          #
#Fecha:     05/03/2015                                #
#Versión:   0.1                                       #
#By:        Christian Medina                          #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
#programa que solicita un valor entero al usuario y   #
#determina si es par o impar                          #
#######################################################

#Mensaje de Bienvenida
print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\tBIENVENIDOS\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

#Solicitamos el ingreso del numero por teclado
print "Introduzca un Numero Entero: ";
chomp($num=<STDIN>);

#verificamos si el numero introducido es = 0
if ($num==0){
    print "\nEl numero que introdujo es 0\n";
}
#Si el numero es diferente de 0 comprobamos si es par o impar y nomstramos mensaje por pantalla
else {
    ($num%2)==0 ? print "\nEl numero que introdujo es Par\n" : print "El numero que introdujo es Impar\n;"
}

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";