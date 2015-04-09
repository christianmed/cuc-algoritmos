#!/usr/bin/perl

#######################################################
#Nombre:        003-mayor-2n.pl                       #
#Fecha:         05/03/2015                            #
#Versión:       0.1                                   #
#By:            Christian Medina                      #
#Modificado:    09/04/2015 - v0.2                     #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
# programa que determina el mayor de 2 numeros intro- #
# du cidos por teclado y muestra el resultado por     #
# pantalla                                            #
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
    print "      DETERMINAR MAYOR DE DOS NUMEROS\n";
    print "==========-----------------------==========\n\n";
}

#Funcion Mensaje de despedida
sub MenDespedida{
    print "\n\n==========-----------------------==========\n";
    print "\t\t  ADIOS!!\n";
    print "==========-----------------------==========\n\n";
}

#Función que muestra mensaje de error
sub Error{
    print "\nERROR ---> Pulse una tecla para continuar...";
    <STDIN>;
}

#Función para solicita un valor por teclado
sub IntroNum{
    print "Introduzca un Numero: ";
    chomp(my $num = <STDIN>);
    return $num;
}

###############################################
#####          CUERPO DEL PROGRAMA          ###
###############################################

do{
    
    #Llamamos a la funcion con el mensaje de bienvenida
    MenBienvenida();
    
    print "VALOR DE A\n\n";
    
    #Solicitamos el ingreso del número por teclado
    $numA = IntroNum();
    
    unless(looks_like_number($numA)){
        Error();
    }

}while(!looks_like_number($numA));

do{
    #llamamos a la función con el mensaje de bienvenida
    MenBienvenida();
    
    print "VALOR DE B\n\n";
    
    #Solicitamos el ingreso del número por teclado
    $numB = IntroNum();
    
    unless(looks_like_number($numB)){
        Error();
    }
        
}while(!looks_like_number($numB));

#Llamamos a la funcion con el mensaje de bienvenida
MenBienvenida();

#Si los números son iguales
if($numA == $numB){
    #Se muestra este mensaje
    print "Los números introducidos son iguales!";
}
#Si los números son diferentes
else{
    #Corroboramos cuál de los dos es el mayor y mostramos el mensaje por pantalla
    ($numA > $numB) and print "$numA es el Mayor de los números!";
    ($numB > $numA) and print "$numB es el Mayor de los números!";
}

#Llamamos a la funcion con el mensaje de despedida
MenDespedida();