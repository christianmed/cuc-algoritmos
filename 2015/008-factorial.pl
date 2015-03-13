#!/usr/bin/perl

########################################################
#Nombre:    008-factorial.pl                           #
#Fecha:     05/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
#Programa que calcula el factorial de un numero in-   #
#troducido por el usuario                             #
#######################################################

#Mensaje de Bienvenida
print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\tBienvenidos\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

#Defino la variable que contendra el valor del factorial
my $Fac = 1;

#Solicitamos el ingreso del numero por teclado
#Nos aseguramos de que el valor sea >= 0
do {
    print "Introduzca un Numero Entero Positivo: ";
    chomp( $n = <STDIN> );
} while ( $n < 0 );

#Comprobamos si el numero es 0 o 1 ya que en ambos casos
#el factorial es 1
if ( $n < 2 ) {
    print "\n$n! = 1";
}
#Si el numero es >= 2 realizamos el calculo
else{
        #Empezamos a multiplicar por 1 y hasta $n
        for ( $i = 1; $i <= $n; $i++ ) {
            $Fac *= $i;
        }

        #Mostramos por pantalla el resultado
        print "\n$n! = $Fac";
}
        
#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";