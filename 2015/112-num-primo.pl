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

#Función que muestra un mensaje de error
sub Error{
	print "\nERROR ---> No Introdujo un Numero!\n";
	print "\nPulse una tecla para continuar...";
	<STDIN>;
}

###############################################
#####          CUERPO DEL PROGRAMA          ###
###############################################

use Scalar::Util 'looks_like_number';

#Llamaos a la función IntroNum() y e valor devuelto lo guardamos en la variable $num
$num = IntroNum();

#Si $num es igual a 0 o a 1
if($num == 0 || $num == 1){
	#Mostramos el siguiente mensaje
	print "\n$num No es Primo!";
}
#Si $num es igual a 2
elsif($num == 2){
	#Mostramos el siguiente mensaje
	print "\n2 Es Primo!";
}
#Si $num es mayor a 2 entonces empezamos a realiza los cálculos
else{
	#Se inicializa la variable $div en 2 porque todo número primo sólo tiene 2 divisores
	$div=2;
	#Empezamos a dividir entre 3  
	for($i=3; sqrt($num)>$i; $i+=2){
		#print "Resto de $num/$i = ", ($num % $i), "\n";
		unless($num % $i){
			$div++; last;
		}
	}
	$div == 2 ? print "\n$num Es Primo!" : print "\n$num No es Primo!";
}

MenDespedida();	