#!/usr/bin/perl

#######################################################
#Nombre:        004-mayor-3n.pl                       #
#Fecha:         05/03/2015                            #
#Versión:       0.1                                   #
#By:            Christian Medina                      #
#Modificado:    09/04/2015 - v0.2                     #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
#programa que calcula el mayor de 3 numeros introdu-  #
#cidos por teclado y muestra el resultado por         #
#pantalla.                                            #
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
    print "     DETERMINAR MAYOR DE TRES NUMEROS\n";
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
    
    #Llamamos a la función con el mensaje de bienvenida
    MenBienvenida();
    
    print "VALOR DE $letra\n\nIntroduzca un Numero: ";
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

#Solicitamos el valor de A y pasamos como parámetro la letra A
$numA = IntroNum('A');

#Solicitamos el valor de B y pasamos como parámetro la letra B
$numB = IntroNum('B');

#Solicitamos el valor de C y pasamos como parámetro la letra C
$numC = IntroNum('C');

#Llamamos a la función con el mensaje de bienvenida
MenBienvenida();

#Comprobación del mayor de los números

#Si los tres números son iguales mostramos el siguiente mensaje
($numA == $numB && $numA == $numC && $numB == $numC) and print "Los tres numeros son iguales!";

#Comprobamos Si A es mayor y mostramos su valor
($numA > $numB && $numA > $numC) and print "$numA es el Mayor de los Numeros!";

#Comprobamos Si B es mayor y mostramos su valor
($numB > $numA && $numB > $numC) and print "$numB es el Mayor de los Numeros!";

#Comprobamos Si C es mayor y mostramos su valor
($numC > $numA && $numC > $numB) and print "$numC es el Mayor de los Numeros!";

#Llamamos a la funcion con el mensaje de despedida
MenDespedida();