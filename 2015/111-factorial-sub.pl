#!usr/bin/perl

########################################################
#Nombre:    111-factorial-sub.pl                       #
#Fecha:     08/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Programa que calcula el factorial de un numero in-  #
# troducido por el usuario (debe ser mayor o igual a  #
# 0) a través de una función                          #
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
    print "        DETERMINAR EL FACTORIAL DE N\n";
    print "==========-----------------------==========\n\n";
}

#Función Mensaje de despedida
sub MenDespedida{
    print "\n\n==========-----------------------==========\n";
    print "\t\t  ADIOS!!\n";
    print "==========-----------------------==========\n\n";
}

#Función para solitar un valor
sub IntroNum{
    #Mostramos el mensaje de bienvenida
    MenBienvenida();
    
    #Solicitamos el valor de N al usuario (N debe ser >= 0)
    print "Introduzca un Numero Entero Positivo: ";
    chomp($num=<STDIN>);
    
    if(!looks_like_number($num) || $num < 0){
        print "\nERROR ---> No Introdujo un Numero >= 0\n\n";
        print "Pulse una tecla para continuar..."; <STDIN>;
        $num = IntroNum();
    }
    else{
        return $num;
    }
}

#Función para determinar el factorial de un numero
sub Factorial{
    my $n = shift;
    #Comprobamos si N es menor a 3
    if($n < 3){
        #Si N es igual a 2 devolvemos su valor y si es igual a 0 o a 1 devolvemos 1 ya que es el valor que corresponde
        $n == 2 ? return $n : return 1;
    }
    #Si N es mayor a 2 hacemos el cálculo
    else{
        return $n*Factorial($n-1);
    }
}

###############################################
#####          CUERPO DEL PROGRAMA          ###
###############################################

#Solicitamos el valor de N al usuario
$n = IntroNum();

#Pasamos el valor de N a la funcion Factorial y mostramos el resultado
print "\n!$n = ", Factorial($n);

#Llamamos a la funcion con el mensaje de despedida
MenDespedida();