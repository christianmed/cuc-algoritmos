#!/usr/bin/perl

#######################################################
#Nombre:    005-mayor-3n.pl                           #
#Fecha:     05/03/2015                                #
#Versión:   0.1                                       #
#By:        Christian Medina                          #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
#programa que solicita 3 números por teclado y cal-   #
#cula el mayor, el intermedio y el menor mostrándo-   #
#los por pantalla en el orden de introducción, de     #
#mayor a menor y de menor a mayor.                    #
#                                                     #
#  **Se comprueba que los números sean diferentes**   #
#######################################################

#Mensaje de Bienvenida
print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\tBIENVENIDOS\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

#Solicitamos el ingreso de los números por teclado
print "Introduzca el Valor de A: ";
chomp($a=<STDIN>);
#Comprobamos que 2do número sea diferente del 1er número
do{
    print "Introduzca el Valor de B: ";
    chomp($b=<STDIN>);
}
while ($b == $a);
#Comprobamos que 3er número sea diferente del 1er y 2do número
do{
    print "Introduzca el Valor de C: ";
    chomp($c=<STDIN>);
}
while ($c == $a || $c == $b);

#Mostrar los valores tal y como fueron introducidos
print "\nLos Valores introducidos son:\n\n $a\n $b\n $c\n";

#Comprobación del mayor de los números
if ($a>$b && $a>$c) {
    #Si A es el mayor se guarda su valor en la variable $mayor
    $mayor = $a;
    #Comprobamos el número intermedio y el menor y se guardan sus valos en las variables $medio y $menor
    if ($b>$c) {
        $medio = $b;
        $menor = $c;
    }
    else {
        $medio = $c;
        $menor = $b;
    }
}
if ($b>$a && $b>$c) {
    #Si B es el mayor se guarda su valor en la variable $mayor
    $mayor = $b;
    #Comprobamos el número intermedio y el menor y se guardan sus valos en las variables $medio y $menor
    if ($a>$c) {
        $medio = $a;
        $menor = $c;
    }
    else {
        $medio = $c;
        $menor = $a;
    }
}
if ($c>$a && $c>$b) {
    #Si C es el mayor se guarda su valor en la variable $mayor
    $mayor = $c;
    #Comprobamos el número intermedio y el menor y se guardan sus valos en las variables $medio y $menor
    if ($a>$b) {
        $medio = $a;
        $menor = $b;
    }
    else {
        $medio = $b;
        $menor = $a;
    }
}

#Mostramos por pantalla los números de mayor a menor
print "\nValores de Mayor a Menor:\n\n $mayor\n $medio\n $menor\n";

#mostramos por pantalla los numerós de menor a mayor
print "\nValores de Menor a Mayor:\n\n $menor\n $medio\n $mayor";

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";