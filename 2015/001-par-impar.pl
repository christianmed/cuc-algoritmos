#!/usr/bin/perl

#######################################################
#Nombre:        001-par-impar.pl                      #
#Fecha:         05/03/2015                            #
#Versión:       0.1                                   #
#By:            Christian Medina                      #
#Modificado:    09/04/2015 - v0.2                     #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
#programa que solicita un valor entero al usuario y   #
#determina si es par o impar                          #
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
    print "   DETERMINAR SU UN NUMERO ES PAR O IMPAR\n";
    print "==========-----------------------==========\n\n";
}

#Funcion Mensaje de despedida
sub MenDespedida{
    print "\n\n==========-----------------------==========\n";
    print "\t\t  ADIOS!!\n";
    print "==========-----------------------==========\n\n";
}

sub Error{
    print "\nERROR ---> Pulse una tecla para continuar...";
    <STDIN>;
}

###############################################
#####          CUERPO DEL PROGRAMA          ###
###############################################

do{
    #Mostramos el mensaje de bienvenida
    MenBienvenida();
    
    #Solicitamos el ingreso del número por teclado
    print "Introduzca un Numero Entero Positivo: ";
    chomp($num=<STDIN>);
    
    #Comprobamos que se haya introducido un número
    if($num < 0 || !looks_like_number($num)){
        #Se muestra un mensaje de error
        Error();
    }

}while($num < 0 || !looks_like_number($num));

#verificamos si el número introducido es = 0
if ($num==0){
    print "\nEl 0 es nu numero neutro";
}
#Si el número es diferente de 0 comprobamos si es par o impar y mosstramos mensaje por pantalla
else {
    ($num%2)==0 ? print "\nEl numero que introdujo es Par" : print "\nEl numero que introdujo es Impar";
}

#Llamamos a la funcion con el mensaje de despedida
MenDespedida();