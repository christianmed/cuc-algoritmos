#!/usr/bin/perl

#######################################################
#Nombre:    006-primos.pl                             #
#Fecha:     05/03/2015                                #
#Versión:   0.1                                       #
#By:        Christian Medina                          #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
#programa que indica si un numero es Primo o no       #
#######################################################

#Mensaje de bienvenida
print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\tBienvenidos\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

#Definición de variables
#Un numero primo tiene 2 dividores
my $Div = 2;

#Solicitamos el ingreso del número por teclado
print "Introduzca un Numero Entero: ";
chomp( $n = <STDIN> );

#Realizamos las divisiones del número
#Empezamos a dividir entre dos porque todo número es divisible entre 1
#El último divisor será $n-1 porque todo número es divisible por si mismo
for ( $i = 2 ; $i < $n ; $i++ ) {
                #Si el resto de la división es igual a 0 se aunmenta $Div
    if ( $n % $i == 0 ) {
        $Div++;
    }
}

#verificamos si el número tiene sólo dos divisores
$Div == 2 ? print "\nNumero Primo!!" : print "\nNo es Primo!!";

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";