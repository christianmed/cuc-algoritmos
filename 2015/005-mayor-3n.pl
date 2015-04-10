#!/usr/bin/perl

#######################################################
#Nombre:        005-mayor-3n.pl                       #
#Fecha:         05/03/2015                            #
#Versión:       0.1                                   #
#By:            Christian Medina                      #
#Modificado:    09/04/2015                            #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
# programa que solicita 3 números por teclado y cal-  #
# cula el mayor, el intermedio y el menor mostrándo-  #
# los por pantalla en el orden de introducción, de    #
# mayor a menor y de menor a mayor.                   #
#                                                     #
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
    print "  DETERMINAR MAYOR Y MENOR DE TRES NUMEROS\n";
    print "==========-----------------------==========\n\n";
}

#Funcion Mensaje de despedida
sub MenDespedida{
    print "\n\n==========-----------------------==========\n";
    print "\t\t  ADIOS!!\n";
    print "==========-----------------------==========\n\n";
}

#Función con mensaje de error
sub Error{
    print "\nERROR ---> Pulse una tecla para continuar...";
    <STDIN>;
}

#Función para solicitar N números por teclado
sub IntroNum{
    
    my $n = shift;
    
    #Llamamos a la función con el mensaje de bienvenida
    MenBienvenida();
    
    print "Introduzca el valor del Numero ", $i+1, ": ";
    chomp(my $num = <STDIN>);
        
    unless(looks_like_number($num)){
        Error();
        $num = IntroNum();
    }
    return $num;
}

###############################################
#####          CUERPO DEL PROGRAMA          ###
###############################################

#Ciclo para solicitar el valor de los números al usuario y guardarlos en una lista
for($i=0; $i<3; $i++){
    #Pasamos el indice de los elementos como parámetro para saber de qué número se trata
    $num[$i] = IntroNum($i);
    #Una vez devuelto el valor lo metemos al final de la lista
    push (@lista, $num[$i]);
}

#Llamamos a la función con el mensaje de bienvenida
MenBienvenida();

#Mostrar los valores tal y como fueron introducidos
print "Los Valores introducidos son: @lista\n\n";

#Ordenamos la lista de menor a mayor y mostramos los valores por pantalla
@lista = sort {$a<=>$b} @lista;
print "Ordenados de Menor a Mayor: @lista\n\n";

#Ordenamos la lista de mayor a menor y mostramos los valores por pantalla
@lista = sort {$b<=>$a} @lista;
print "Ordenados de Mayor a Menor: @lista";

#Llamamos a la funcion con el mensaje de despedida
MenDespedida();