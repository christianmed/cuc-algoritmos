#!/usr/bin/perl

########################################################
#Nombre:    101-alfabeto-may-to-min                    #
#Fecha:     26/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Realizar un programa que transforme todas las       #
# letras del alfabeto de mayúsculas a minúsculas.     #
#######################################################

#Funcion Mensaje de Bienvenida
sub MenBienvenida{
    #Limpiar pantalla
    print `clear`;
    
    print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\tBienvenidos\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
    
    print "==========-----------------------==========";
    print "\n  ALFABETO DE MAYUSCULAS A MINUSCULAS\n";
    print "==========-----------------------==========\n\n";
}

#Funcion Mensaje de despedida
sub MenDespedida{
    print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\t  Adios!!\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
}

#Llamamos a la funcion con el mensaje de bienvenida
MenBienvenida();

#Definicion de variables
my @alfabeto = (A..Z);

print "\nAlfabeto en Mayusculas: @alfabeto\n";
print "\nAlfabeto en Minusculas: \L@alfabeto\n";

#Llamamos a la funcion con el mensaje de despedida
MenDespedida();