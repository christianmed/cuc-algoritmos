#!/usr/bin/perl

########################################################
#Nombre:    021-coigo-empleado.pl 					   #
#Fecha:     22/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
# En una empresa cada empleado debe teclear un código #
# identificador de 3 cifras en la entrada. Escribir   #
# un programa que muestre por pantalla la categoría   #
# del empleado teniendo en cuenta que:                #
#													  #
# • Si el código es divisible por 2, por 3 y por 5,   #
#   la categoría del empleado es "Director general".  #
# • Si el código es divisible por 3 y por 5 pero no   #
#   por 2, la categoría del empleado es "Directivo".  #
# • Si el código es divisible por 2, pero no por 3 ni #
#   por 5, la categoría del empleado es "Staff".      #
# • Si el código no es divisible por 2, ni por 3 ni   #
#   por 5, la categoría del empleado es "Seguridad".  #
#													  #
# Recuerde que: Un numero X es divisible por otro Y   #
# si X mod Y = 0.									  #
#######################################################

#Funcion Mensaje de Bienvenida
sub MenBienvenida{
    print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\tBienvenidos\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
    
    print "==========-----------------------==========";
    print "\n   DETERMINAR LA CATEGORIA DEL EMPLEADO\n";
    print "==========-----------------------==========\n\n";
}

#Funcion Mensaje de despedida
sub MenDespedida{
    print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\t  Adios!!\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
}

#Limpiar pantalla
print `clear`;

#Llamamos a la funcion con el mensaje de bienvenida
MenBienvenida();

#Definicion de variables
my $cod=0;
my $cat="";

#Solicitamos el ingreso del codigo por teclado
print "Introduzca su Codigo de Acceso: ";
chomp($cod=<STDIN>);

if(($cod%2==0 && $cod%3==0) && $cod%5==0){
	$cat="Director General";
}
elsif($cod%2!=0 && ($cod%3==0 && $cod%5==0)){
	$cat="Directivo";
}
elsif($cod%2==0 && ($cod%3!=0 && $cod%5!=0)){
	$cat="Staff";	
}
elsif($cod%2!=0 && ($cod%3!=0 && $cod%5!=0)){
	$cat="Seguridad";
}
else{
	$cat="Desconocido";
}

print "\nCATEGORIA: $cat";

#Llamamos a la funcion con el mensaje de despedida
MenDespedida();