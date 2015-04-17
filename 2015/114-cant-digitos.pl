#!/usr/bin/perl

#######################################################
#Nombre:    	114-cant-digitos.pl                   #
#Fecha:     	16/04/2015                            #
#Versión:   	0.1                                   #
#By:        	Christian Medina                      #
#Modificado:    		                              #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Programa que indica cuantas cifras tiene N (se soli-#
# cita el valor del N al usuario)                     #
#######################################################

use Scalar::Util 'looks_like_number';

#Función Mensaje de Bienvenida
sub MenBienvenida{
    #Limpiamos la pantalla
    print `clear`;
    print "==========-----------------------==========\n";
    print "\t\tBIENVENIDOS\n";
    print "==========-----------------------==========\n";
    print "==========-----------------------==========\n";
    print "      	CALCULAR CUANTAS CIFRAS TIENE N\n";
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

	#Llamamos a la funcion con el mensaje de bienvenida
	MenBienvenida();

	print "Introduzca un Numero >= 0: ";
	chomp(my $num = <STDIN>);

	#Si no se introduce un número >= 0
	if(!looks_like_number($num) || $num < 0){
		#Se muestra un mensaje de error
		Error();
		#Se solicita la introducción de otro valor
		$num = IntroNum();
	}
	#Si se introduce un número >= 0 se devuelve su valor
	return $num;
}

#Función que muestra un mensaje de error
sub Error{
	print "\nERROR ---> No Introdujo un Numero >= 0\n";
	print "\nPulse una tecla para continuar...";
	<STDIN>;
}

###############################################
#####          CUERPO DEL PROGRAMA          ###
###############################################

#Llamamos a la función IntroNum() y el valor devuelto lo guardamos en la variable $num
$num = IntroNum();

#Llamamos nuevamente a la función con el mensaje de bienvenida (estética)
MenBienvenida();

#Inicializamos el contador de cifras en 1 
$contador = 1;
#Copiamos el valor original de $num para realizar las divisiones necesarias sin alterarlo
$copia = $num;

#Mientras $copia sea >= 10
while($copia >= 10){
	#Lo dividiremos entre 10 tantas veces como sea necesario
	$copia=$copia/10;
	#Y aumentaremos en 1 el valor del contador de cifras.
	$contador++;

	#Con cada división el valor de copia se reducirá en una cifra y cuando dicho valor
	#sea menor a diez terminarán las divisiones. Sin embargo, al inicializar el contador
	#de cifras en 1 ya se habrá tomado en cuenta ese último valor de copia de una cifra.
}

#Comprobamos la cantidad de cifras de $num. Si tiene una sola cifra se muestra la palabra cifra.
#De lo contrario se muestra la palabra cifras porque tendría más de una (estética xD)
$contador > 1 ? print "$num tiene $contador cifras!": print "$num tiene $contador cifra!";

#Llamamos a la función con el mensaje de despedida
MenDespedida();