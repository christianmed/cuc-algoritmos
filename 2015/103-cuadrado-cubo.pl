#!/usr/bin/perl

########################################################
#Nombre:    103-cuadrado-cubo.pl                       #
#Fecha:     27/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Leer N números y obtener su cuadrado y su cubo.     #
#######################################################

#Funcion Mensaje de Bienvenida
sub MenBienvenida{
    #Limpiar pantalla
    print `clear`;
    
    print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\tBienvenidos\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
    
    print "==========-----------------------==========";
    print "\n      CUADRADO Y CUBO DE \"N\" NUMEROS\n";
    print "==========-----------------------==========\n\n";
}

#Funcion Mensaje de despedida
sub MenDespedida{
    print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\t  Adios!!\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
}

sub Cuadrado{
    return((shift)**2);
}

sub Cubo{
    return((shift)**3);
}

###############################################
#####          CUERPO DEL PROGRAMA          ###
###############################################

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

#Llamamos a la funcion con el mensaje de bienvenida
MenBienvenida();

=begin
$" = "\n";

#Haciendo los calculos de una vez
@arrayCuadrados = map {$_ ** 2} @array; 
@arrayCubos = map {$_ ** 3} @array; 
=cut

#Usando Funciones para hacer los calculos
@arrayCuadrados = map Cuadrado($_), @array; 
@arrayCubos = map Cubo($_), @array; 

for($i=0; $i<$N; $i++){
    print "NUMERO $array[$i]\n\n";
    print "   CUADRADO = $arrayCuadrados[$i]\n";
    print "   CUBO = $arrayCubos[$i]";
    if($i<$N-1){
        print "\n\n";      
    }
}

#Llamamos a la funcion con el mensaje de despedida
MenDespedida();