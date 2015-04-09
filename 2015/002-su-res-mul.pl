#!/usr/bin/perl

#######################################################
#Nombre:        002-su-res-mul.pl                     #
#Fecha:         05/03/2015                            #
#Versión:       0.1                                   #
#By:            Christian Medina                      #
#Modificado:    09/04/2015 - v0.2                     #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
#Programa que solicita un numero entero al usuario.   #
#Si el valor es positivo se pide otro numero, se      #
#calcula la suma, resta y producto de ambos y se      #
#muestran los resultados por pantalla.                #
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
    print "   SUMA, RESTA Y PRODUCTO DE DOS NUMEROS\n";
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

#Función para solicitar un valor
sub IntroNum{
    print "Introduzca un Numero: ";
    chomp(my $num=<STDIN>);
    return $num;
}

###############################################
#####          CUERPO DEL PROGRAMA          ###
###############################################
do{
    #Llamamos a la función con el mensaje de bienvenida
    MenBienvenida();
    
    print "VALOR DE A\n\n";
    #Solicitamos el ingreso del número por teclado
    $numA = IntroNum();
    
    #Comprobamos que se introduzca un número
    unless(looks_like_number($numA)){
        Error();
    }

}while(!looks_like_number($numA));

#verificamos que el número sea positivo
if ($numA>-1) {
    do{
        #Llamamos a la función con el mensaje de bienvenida
        MenBienvenida();
        
        print "VALOR DE B\n\n";
        #Solicitamos el ingreso del segundo número por teclado
        $numB = IntroNum();
        
        #Comprobamos que se introduzca un número
        unless(looks_like_number($numB)){
        Error();
    }
        
    }while(!looks_like_number($numB));
    
    #Realizamos las operaciones aritméticas
    $suma =      $numA + $numB;
    $resta =     $numA - $numB;
    $producto =  $numA * $numB;
    
    #Mostramos por pantalla los resultados
    print "\nSuma: $numA + $numB = $suma\n";
    print "Resta: $numA - $numB = $resta\n";
    print "Producto: $numA * $numB = $producto";
}
#Si el número es negativo se muestra el siguiente mensaje
else {
    print "\nEl numero que introdujo es Negativo!";
}

#Llamamos a la funcion con el mensaje de despedida
MenDespedida();