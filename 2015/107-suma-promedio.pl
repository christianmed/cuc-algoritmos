#!/usr/bin/perl

########################################################
#Nombre:    107-suma-promedio.pl                       # 
#Fecha:     27/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Calcular de la suma y la media aritmética de N      #
# números reales. Solicitar el valor de N al usuario  #
# y cada uno de los N números reales.                 #
#######################################################

#Funcion Mensaje de Bienvenida
sub MenBienvenida{
    #Limpiar pantalla
    print `clear`;
    
    print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\tBienvenidos\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
    
    print "==========-----------------------==========";
    print "\n       SUMA Y PROMEDIO DE \"N\" NUMEROS\n";
    print "==========-----------------------==========\n\n";
}

#Definicion de variables
my $suma = 0;

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
    
    $suma+=$array[$i];
}

$promedio=$suma/$N;

#Llamamos a la funcion con el mensaje de bienvenida
MenBienvenida();

print "SUMA =     $suma\n";
print "PROMEDIO = $promedio";

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";