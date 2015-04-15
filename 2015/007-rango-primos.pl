#!/usr/bin/perl

#######################################################
#Nombre:        007-rango-primos.pl                   #
#Fecha:         04/03/2015                            #
#Versión:       0.2                                   #
#By:            Christian Medina                      #
#Modificado:    15/04/2015                            #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
# programa que muestra los numeros primos de un Rango #
# definido por el usuario. Se debe indicar valor      #
# mínimo y valor máximo.                              #
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
    print "  LISTAR NUMEROS PRIMO DENTRO DE UN RANGO\n";
    print "==========-----------------------==========\n\n";
}

#Funcion Mensaje de despedida
sub MenDespedida{
    print "\n==========-----------------------==========\n";
    print "\t\t  ADIOS!!\n";
    print "==========-----------------------==========\n\n";
}

#Función para solicitar un número por teclado
sub IntroNum{
    #Declaramos una variable para devolver su valor en caso de que no se introduzca un número
    my $men = "error";
    #Guardamos lo que introduzca el ususario en la variable $num
    chomp(my $num = <STDIN>);
    #Comprobamos que $num sea un número y que sea >= 2 porque el 0 y el 1 no son números primos
    if(!looks_like_number($num) || $num < 2){
        #Si no se cumple la condición se muestra un mensaje de error
        Error();
        #Y se retorna el valor de la variable declarada al principio de la función
        return $men; 
    }
    #Si $num es un número y es >= a 2 se devuelve su valor
    else{
        return $num;
    }
}

#Función que muestra mesnaje de Error
sub Error{
    print "\nERROR ---> No Introdujo un Numero >= 2\n\n";
    print "Pulse una tecla para continuar...";
    <STDIN>;
}

###############################################
#####          CUERPO DEL PROGRAMA          ###
###############################################

#Bucle para mostrar mensaje de Bienvenida y solicitar el valor mímino del rango
do{
    MenBienvenida();
    
    print "ESTABLECER RANGO\n\n";
    print "Valor Minimo: ";
    $min = IntroNum();

}while($min < 2 || $min eq "error"); #Si el valor devuelto por la función IntroNum() es > 2 el blucle se repite

##Bucle para mostrar mensaje de Bienvenida y solicitar el valor máximo del rango
do{
    MenBienvenida();
    
    print "ESTABLECER RANGO\n\n";
    print "Valor Maximo: ";
    $max = IntroNum();
    
}while($max < 2 || $max eq "error"); #Si el valor devuelto por la función IntroNum() es < 2 el bucle se repite

#Mostramos nuevamente el mensaje de bienvenida (estética xD)
MenBienvenida();
#Mostramos mensaje con los valores del Rango
print "Los Numeros Primos entre $min y $max son:\n\n";

#Etiqueta del bluce for con el que se harán las comprobaciones
BUCLE:
for($min; $min <= $max; $min++){
    #Empezamos a dividir entre 2 y hasta que $j sea mayor a la raíz cuadrada del dividendo
    for($j = 2; $j*$j <= $min; $j++){
        #Si la división es exacta entonces el número no es primo y nos devolvemos a la etiqueta BUCLE para
        #continuar con el número siguiente
        next BUCLE unless($min % $j);
    }
    #Si el programa llega a éste punto entonces encontramos un numero primo y lo mostramos por pantalla
    print "$min\n";
}

#Mostramos el mensaje de Despedida
MenDespedida();