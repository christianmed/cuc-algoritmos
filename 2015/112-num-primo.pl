#!/usr/bin/perl

#######################################################
#Nombre:    	112-num-primo.pl                      #
#Fecha:     	14/04/2015                            #
#Versión:   	0.2                                   #
#By:        	Christian Medina                      #
#Modificado:    14/04/2015                            #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
# programa que indica si un número es Primo o no      #
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

#Llamamos a la función IntroNum() y el valor devuelto lo guardamos en la variable $num
$num = IntroNum();

#Si $num es igual a 0 o a 1
if($num < 2){
	#Mostramos el siguiente mensaje
	print "\n$num No es Primo!";
}
#Si $num es mayor o igual a 2 entonces empezamos a realiza los cálculos
else{
	#Se inicializa la variable $div en 2 porque todo número primo sólo tiene 2 divisores
	$div=2;
	#Ciclo for para realizar las divisiones respectivas
	#Se inicializa la variable $i en 2 y su valor máximo será la raíz cuadrada del dividendo
	#Cuando $i sea mayor que la raíz cuadrada de $num y $div sea mayor que 2 el bucle finalizará
	for($i=2; ($i*$i<=$num && $div < 3); $i++){
		#Si la división es exacta
		unless($num % $i){
			#Entonces conseguimos otro divisor y aumentamos en 1 el valor de $div
			$div++;
		}
	}
	#Comprobamos el valor de $div y mostramos el mensaje final
	$div == 2 ? print "\n$num Es Primo!" : print "\n$num No es Primo!";
}

#Llamamos a la función con el mensaje de despedida
MenDespedida();	