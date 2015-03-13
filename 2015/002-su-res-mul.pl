#!/usr/bin/perl

#######################################################
#Nombre:    002-su-res-mul.pl                         #
#Fecha:     05/03/2015                                #
#Versión:   0.1                                       #
#By:        Christian Medina                          #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
#Programa que solicita un numero entero al usuario.   #
#Si el valor es positivo se pide otro numero, se      #
#calcula la suma, resta y producto de ambos y se      #
#muestran los resultados por pantalla.                #
#######################################################

#Mensaje de Bienvenida
print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\tBIENVENIDOS\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

#Solicitamos el ingreso del numero por teclado
print "Introduzca un Numero: ";
chomp($numA=<STDIN>);

#verificamos que el numero sea positivo
if ($numA>-1) {
    #Solicitamos el ingreso del segundo numero por teclado
    print "Introduzca otro Numero: ";
    chomp($numB=<STDIN>);
    
    #Realizamos las operaciones aritméticas
    $suma =      $numA + $numB;
    $resta =     $numA - $numB;
    $producto =  $numA * $numB;
    
    #Mostramos por pantalla los resultados
    print "\nSuma: $numA + $numB = $suma\n";
    print "Resta: $numA - $numB = $resta\n";
    print "Producto: $numA * $numB = $producto";
}
#Si el numero es negativo se muestra el siguiente mensaje
else {
    print "\nEl numero que introdujo es Negativo!";
}

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";