#!/usr/bin/perl

#######################################################
#Nombre:    	006-primos.pl                         #
#Fecha:     	05/03/2015                            #
#Versión:   	0.1                                   #
#By:        	Christian Medina                      #
#Modificado:    09/04/2015                            #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
# programa que indica si un numero es Primo o no      #
#######################################################

use Scalar::Util 'looks_like_number';

#Función Mensaje de Bienvenida
sub MenBienvenida{
    #Limpiamos la pantalla
    print `clear`;
    print "\n==========-----------------------==========\n";
    print "\t\tBIENVENIDOS\n";
    print "==========-----------------------==========\n";
    print "==========-----------------------==========\n";
    print "   DETERMINAR SI UN NUMERO ES PRIMO O NO\n";
    print "==========-----------------------==========\n\n";
}

#Funcion Mensaje de despedida
sub MenDespedida{
    print "\n\n==========-----------------------==========\n";
    print "\t\t  ADIOS!!\n";
    print "==========-----------------------==========\n\n";
}

#Función para solicita un número por teclado
sub IntroNum{

    my $letra = shift;
    
	#Llamamos a la funcion con el mensaje de bienvenida
	MenBienvenida();

	print "Introduzca un Numero Entero Positivo: ";
	chomp(my $num = <STDIN>);

	#Si no se introduce un número entonces
	unless(looks_like_number($num)){
		#Se muestra un mensaje de error
		Error();
		#Se solicita la introduccioón de otro valor
		$num = IntroNum();
	}
	return $num;
}

sub Error{
	print "\nERROR ---> Pulse una tecla para continuar...";
	<STDIN>;
}

###############################################
#####          CUERPO DEL PROGRAMA          ###
###############################################

#Un numero primo tiene 2 dividores
my $Div = 2;

#Solicitamos el valor del numero a traves de la funcion IntroNum
$num = IntroNum();

#Realizamos las divisiones del número
#Empezamos a dividir entre dos porque todo número es divisible entre 1
#El último divisor será $n-1 porque todo número es divisible por si mismo
for($i=2; $i<$num; $i++){
    #Si el resto de la división es igual a 0 se aunmenta $Div
    if ( $num % $i == 0 ) {
        $Div++;
    }
}

#verificamos si el número tiene sólo dos divisores
$Div == 2 ? print "\nNumero Primo!!" : print "\nNo es Primo!!";

#Llamos a la funcion con el mensaje de despedida
MenDespedida();