#!/usr/bin/perl

#######################################################
#Nombre:    003-mayor-2n.pl                           #
#Fecha:     05/03/2015                                #
#Versión:   0.1                                       #
#By:        Christian Medina                          #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
#programa que calcula el mayor de 2 numeros introdu-  #
#cidos por teclado y muestra el resultado por         #
#pantalla                                             #
#######################################################

#Mensaje de Bienvenida
print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\tBIENVENIDOS\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

#Solicitamos el ingreso de los números por teclado
print "Introduzca el valor de A: ";
chomp($numA=<STDIN>);
print "Introduzca el valor de B: ";
chomp($numB=<STDIN>);

#Si los números son iguales mostramos el siguiente mensaje
if ($numA==$numB) {
    print "\nLos Numeros son iguales...";
}
#Si los numeros son diferentes comprobamos cuál es el mayor
else {
    ($numA > $numB) ? print "\nNumero Mayor: $numA" : print "\nNumero Mayor: $numB";
}

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";