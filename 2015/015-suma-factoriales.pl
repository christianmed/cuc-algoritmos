#!/usr/bin/perl

########################################################
#Nombre:        015-suma-factoriales.pl                #
#Fecha:         08/03/2015                             #
#Versión:       0.2                                    #
#By:            Christian Medina                       #
#Modificado:    15/04/2015 - v0.2                      #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Hacer un programa que permita hacer la sumatoria de #
# forma automática de: !1 + !2 + !3 + !4 + ...        #
# (!1 significa factorial de 1, etc).                 #
# Se solicita por teclado el número de términos a     #
# sumar y se comprueba que el número sea > 1          #
#######################################################

use Scalar::Util 'looks_like_number';

#Función que muestra el mensaje de Bienvenida
sub MenBienvenida{
    #Limpiamos la pantalla
    print `clear`;
    print "==========-----------------------==========\n";
    print "\t\tBIENVENIDOS\n";
    print "==========-----------------------==========\n";
    print "==========-----------------------==========\n";
    print "            SUMA DE FACTORIALES\n";
    print "==========-----------------------==========\n\n";
}

#Función que muestra el mensaje de despedida
sub MenDespedida{
    print "\n\n==========-----------------------==========\n";
    print "\t\t  ADIOS!!\n";
    print "==========-----------------------==========\n\n";
}

#Función para solicitar un número por teclado
sub IntroNum{
    #Mostramos el mensaje de bienvenida
    MenBienvenida();
    
    #Solicitamos la cantidad de términos a sumar
    print "Indique Cuantos Factoriales Desea Sumar (>1): ";
    chomp($num = <STDIN>);
    
    #Comprobamos que el valor de $num sea un número y que sea mayor a 1 ya que
    #deberíamos sumar por lo menos dos elementos
    if(!looks_like_number($num) || $num < 2){
        #si se cumple que no es número o que el valor no es > 1 mostramos el siguiente
        #mensaje de error
        print "\nERROR ---> No Introdujo un Numero > 1\n\n";
        print "Pulse una tecla para continuar..."; <STDIN>;
        #Llamamos a la función IntroNum() de nuevo
        $num = IntroNum();
    }
    #Si es un número y además es > 1
    else{
        #Devolvemos su valor
        return $num;
    }
}

#Función que calcula el factorial de un número
sub Factorial{
    #Guardamos los parámetros recibidos en $num con shift
    my $num = shift;
    #Si $num es = 0 o = 1 devolvemos 1
    if($num < 2){
        return 1;
    }
    #Si $num es >= 2
    else{
        #Esquema recursivo para calcular su factorial
        return $num * Factorial($num-1);
    }
}

###############################################
#####          CUERPO DEL PROGRAMA          ###
###############################################

#Definicion de variables
$suma = 0;

#Solicitamos el ingreso del número por teclado
$elementos = IntroNum();

#Mostramos mensaje de bienvenida de nuevo (estética xD)
MenBienvenida();

#Primera parte del mensaje
print "La Suma de: ";

#Bucle para sumar los factoriales
for($i = 1; $i <= $elementos; $i++){
    #Se pasa el valor de $i a la funciÓn Factorial y el 
    #resultado se va guardando en la variable $suma
    $suma += Factorial($i);
    #Se van mostrando los sumandos
    print "$i! ";
    #se agregamos el signo + si $i < $n
    if($i < $elementos) {
        print "+ ";
    }
}

#Terminamos de mostar el resultado
print "= $suma";

#Mostramos el mensaje de despedida
MenDespedida();