#!/usr/bin/perl

########################################################
#Nombre:    015-suma-factoriales.pl                    #
#Fecha:     08/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
#Hacer un programa que permita hacer la sumatoria de  #
#forma automatica de: !1 + !2 + !3 + !4 + ...         #
#(!1 significa factorial de 1, etc).                  #
#Se solicita por teclado el numero de terminos a      #
#sumar y se comprueba que el numero sea >01           #
#######################################################

#Limpiamos la pantalla
print `clear`;

#Definicion de variables
$suma = 0;

#Mensaje de Bienvenida
print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\tBienvenidos\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

#Solicitamos el ingreso del numero por teclado
#Nos aseguramos que sea >0
do {
    print "Introduce un Numero: ";
    chomp( $n = <STDIN> );
} while ( $n < 1 );

#Primera parte del mensaje
print "\nLa Suma de: ";

#Bucle para sumar los factoriales
for ( $i = 1; $i <= $n; $i++ ) {
        #Se pasa el valor de $i a la funcion Factorial y el 
        #resultado se va guardando en la variable $suma
    $suma += Factorial($i);
    #Se van mostrando los sumandos
    print "!$i ";
    #se agregamos el signo + si $i < $n
    if ( $i < $n ) {
        print "+ ";
    }
}

#Terminamos de mostar el resultado
print "= $suma";

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

#Funcion que calcula el factorial de un numero
sub Factorial {
    my $num = shift;
    my $mul = 1;
    my $i   = 1;

    for ( $i; $i <= $num; $i++ ) {
        $mul *= $i;
    }

    return ($mul);
}