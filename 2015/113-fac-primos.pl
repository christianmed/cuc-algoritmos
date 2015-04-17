#!/usr/bin/perl

#######################################################
#Nombre:    	113-fac-primos.pl                     #
#Fecha:     	16/04/2015                            #
#Versión:   	0.1                                   #
#By:        	Christian Medina                      #
#Modificado:    		                              #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Programa que calcula los factores primos de N (se   #
# solicita el valor de N al usuario                   #
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
    print "           FACTORES PRIMOS DE N\n";
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

	print "Introduzca un Numero Positivo > 1: ";
	chomp(my $num = <STDIN>);

	#Si no se introduce un número > 1
	unless(looks_like_number($num) || $num < 2){
		#Se muestra un mensaje de error
		Error();
		#Se solicita la introducción de otro valor
		$num = IntroNum();
	}
	#Si se introduce un número se devuelve su valor
	return $num;
}

#Función que muestra un mensaje de error
sub Error{
	print "\nERROR ---> No Introdujo un Numero Positivo > 1\n";
	print "\nPulse una tecla para continuar...";
	<STDIN>;
}

###############################################
#####          CUERPO DEL PROGRAMA          ###
###############################################

use Scalar::Util 'looks_like_number';

#Llamamos a la función IntroNum() y el valor devuelto lo guardamos en la variable $num
$num = IntroNum();

#Llamamos nuevamete a la funcion con el mensaje de bienvenida (estética)
MenBienvenida();

#Empezamos a mostrar el mensaje final con el valor original de $num porque si se muestra
#al final su valor ya no será el mismo
print "Factores Primos de $num: ";

#Empezaremos a dividir entre 2
$div = 2;
while($div <= $num){
	#Si la división es exacta
	unless($num % $div){
		#Mostramos el factor primo encontrado
		print "$div";
		#Si el divisor es menor a $num agregamos el signo · 
		#Ello evita que se agregue el signo al final del último factor encontrado (estética)
		$div < $num and print "·";
		#El valor de $num pasará a ser el cociente de la división para seguir buscando factores primos
		$num/=$div;
	}
	#Si la división no es exacta comprobamos el valor del divisor
	else{
		#si es = 2 le le sumamos 1 y cuando su valor sea 3 empezaremos a sumarle 2 para que sea impar.
		#Ellos porque el único factor primo par es el dos y no tiene sentido dividir por otro
		#número par
		$div = $div > 2 ? $div+2 : $div+1;
	}
}

#Llamamos a la función con el mensaje de despedida
MenDespedida();
