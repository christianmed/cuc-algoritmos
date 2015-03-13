#!/usr/bin/perl

#######################################################
#Nombre:    007-rango-primos.pl                       #
#Fecha:     04/03/2015                                #
#Versión:   0.1                                       #
#By:        Christian Medina                          #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
#programa que muestra los numeros primos de un Rango  #
#definido por el usuario. Se debe indicar valor       #
#minimo y valor maximo.                               #
#######################################################

#Mensaje de Bienvenida
print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\tBIENVENIDOS\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

print "  PROGRAMA QUE MUESTRA LOS NUMEROS PRIMOS\n";
print "            DENTRO DE UN RANGO\n\n";

#Menu de Opciones
print "[1] Definir Rango\n";
print "[2] Salir del Programa :-(\n\n";

#Verificacion del numero introducido (1 al 2)
do {
    print "ELIGA UNA OPCION: ";
    chomp( $op = <STDIN> );
} while ( $op <= 0 || $op >= 3 );

if ( $op == 1 ) {

    #Solicitamos valor minimo y valor maximo del rango
    print "\nValor Minimo: ";
    chomp( $Vmin = <STDIN> );
    print "Valor Maximo: ";
    chomp( $Vmax = <STDIN> );

    #Salto de linea para mejor visualizacion
    print "\n";

    #Realizamos las divisiones de los numeros
    for ( $i = $Vmin; $i <= $Vmax; $i++ ) {

        #Un numero primo tiene 2 dividores
        $Div = 2;

        #Empezamos a dividir entre 2 y hasta $i-1
        for ( $j = 2; $j < $i; $j++ ) {
            if ( $i % $j == 0 ) {
                $Div++;
            }
        }

        #Si tiene solo dos divisores es Primo y lo mostramos en pantalla
        if ( $Div == 2 ) {
            print "$i ";
        }
    }
}

print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";