#!/usr/bin/perl

########################################################
#Nombre:    106-pos-neg-neu.pl                         # 
#Fecha:     27/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Leer N números e imprimir cuantos son positivos,    #
# cuantos negativos y cuantos neutros y listarlos.    #
#######################################################

#Funcion Mensaje de Bienvenida
sub MenBienvenida{
    #Limpiar pantalla
    print `clear`;
    
    print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\tBienvenidos\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
    
    print "==========-----------------------==========";
    print "\n INDICAR CANTIDAD DE POSITIVOS, NEGATIVOS\n";
    print "        Y NEUTROS DE \"N\" NUMEROS\n";
    print "==========-----------------------==========\n\n";
}

#Definicion de variables


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
}

@positivos = map {$_} grep {$_>0} @array;
$cantPositivos = @positivos;

@negativos = map {$_} grep {$_<0} @array;
$cantNegativos = @negativos;

@neutros = map {$_} grep {$_==0} @array;
$cantNeutros = @neutros;

$"="\n";

#Llamamos a la funcion con el mensaje de bienvenida
MenBienvenida();

print "NEGATIVOS = $cantNegativos\n@negativos\n\n";
print "NEUTROS   = $cantNeutros\n@neutros\n\n";
print "POSITIVOS = $cantPositivos\n@positivos";

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";