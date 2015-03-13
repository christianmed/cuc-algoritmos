#!/usr/bin/perl

#######################################################
#Nombre:    004-mayor-3n.pl                           #
#Fecha:     05/03/2015                                #
#Versión:   0.1                                       #
#By:        Christian Medina                          #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
#programa que calcula el mayor de 3 numeros introdu-  #
#cidos por teclado y muestra el resultado por         #
#pantalla.                                            #
#                                                     #
#  **Se comprueba que los números sean diferentes**   #
#######################################################

#Mensaje de Bienvenida
print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\tBIENVENIDOS\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

#Solicitamos el ingreso de los números por teclado
print "Introduzca el Valor de A: ";
chomp($numA=<STDIN>);
#Comprobamos que 2do número sea diferente del 1er número
do {
    print "Introduzca el Valor de B: ";
    chomp($numB=<STDIN>);
}
while ($numA==$numB);
#Comprobamos que 3er número sea diferente del 1er y 2do número
do {
    print "Introduzca el Valor de C: ";
    chomp($numC=<STDIN>);
}
while ($numC==$numA || $numC==$numB);

#Comprobación del mayor de los números
if ($numA > $numB && $numA > $numC) {
    #Se guarda el valor en la variable $mayor
    $mayor = $numA;
}
elsif ($numB > $numA && $numB > $numC){
    #Se guarda el valor en la variable $mayor
    $mayor = $numB;
}
else {
    #Se guarda el valor en la variable $mayor
    $mayor = $numC;
}

#Se muestra por pantalla el valor de $mayor
print "\nNumero Mayor: $mayor";

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";