#!/usr/bin/perl

########################################################
#Nombre:    105-negativos.pl                           # 
#Fecha:     27/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Leer N números e imprimir solo los negativos.       #
#######################################################

#Funcion Mensaje de Bienvenida
sub MenBienvenida{
    #Limpiar pantalla
    print `clear`;
    
    print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\tBienvenidos\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
    
    print "==========-----------------------==========";
    print "\n  IMPRIMIR SOLO NEGATiVOS DE \"N\" NUMEROS\n";
    print "==========-----------------------==========\n\n";
}

#Funcion Mensaje de despedida
sub MenDespedida{
    print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\t  Adios!!\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
}

#Definicion de variables

#Llamamos a la funcion con el mensaje de bienvenida
MenBienvenida();

print "Idique el Valor de \"N\": ";
chomp($N=<STDIN>);

for($i=0; $i<$N; $i++){
    #Llamamos a la funcion con el mensaje de bienvenida
    MenBienvenida();
    $j=$i+1;
    print "Valor de Numero $j: ";
    chomp($array[$i]=<STDIN>);
}

@negativos = map {$_} grep {$_<0} @array;

#Llamamos a la funcion con el mensaje de bienvenida
MenBienvenida();

$"="\n";

print "NEGATIVOS\n\n@negativos";

#Llamamos a la funcion con el mensaje de despedida
MenDespedida();