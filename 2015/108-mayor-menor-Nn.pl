#!/usr/bin/perl

########################################################
#Nombre:    108-mayor-menor-Nn.pl                      #
#Fecha:     27/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Calcular el Mayor y Menor de N numeros introducidos #
# por teclado. Solicitar al usuario el valos de N     #
#######################################################

#Funcion Mensaje de Bienvenida
sub MenBienvenida{
    #Limpiar pantalla
    print `clear`;
    
    print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\tBienvenidos\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
    
    print "==========-----------------------==========";
    print "\n        MAYOR Y MENOR DE \"N\" NUMEROS\n";
    print "==========-----------------------==========\n\n";
}

#Definicion de variables
#my $mayor = -9999999999;
#my $menor = 9999999999;

#Llamamos a la funcion con el mensaje de bienvenida
MenBienvenida();

print "Indique el Valor de \"N\": ";
chomp($N=<STDIN>);

for($i=0; $i<$N; $i++){
    #Llamamos a la funcion con el mensaje de bienvenida
    MenBienvenida();
    $j=$i+1;
    print "Valor de Numero $j: ";
    chomp($array[$i]=<STDIN>);
    #$array[$i]<$menor and $menor=$array[$i];
    #$array[$i]>$mayor and $mayor=$array[$i];
}

@sorted = sort {$a<=>$b} @array;
$menor = shift @sorted;
$mayor = pop @sorted;

#Llamamos a la funcion con el mensaje de bienvenida
MenBienvenida();

print "MAYOR = $mayor\n";
print "MENOR = $menor";

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";