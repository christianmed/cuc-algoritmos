#!/usr/bin/perl

########################################################
#Nombre:    014-factorial.pl                           #
#Fecha:     08/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
#Programa que calcula el factorial de un numero in-   #
#troducido por el usuario y lo muestra:               #
#!n = n + n + n + n = n                               #
#######################################################

#Limpiamos la pantalla
print `clear`;

#Definicion de variables
my $Fac=1;

#Mensaje de Bienvenida
print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\tBienvenidos\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

#Solicitamos el ingreso del numero por teclado
#nos aseguramos que el numero sea >= 0
do{
        print "Introduzca un Numero Entero: ";
        chomp($n=<STDIN>);
}while($n<0);

#Comprobamos si el numero es 0 o 1 ya que en ambos casos
#el factorial es 1
while($n<2){
        $n == 0 ? print "\n!$n = 1" : print "\n!$n = 0 + 1 = 1";
        #Hacemos falsa la condicion para que salga del bucle
        $n=2;
}

#Si el numero es >=2 hacemos el calculo y vamos mostrando por pantalla
#el mensaje como nos fue solicitado

#Primera parte del mensaje
print "\n!$n =";

#Calculo y cuerpo del mensaje
for($i=1; $i<=$n; $i++){
        #Vamos guardando el resultado en el variable $Fac
        $Fac*=$i;
        #Mostramos el valor de $i
        print " $i ";
        #Agragamos el sigo * si el valor de $i < $n
        if($i<$n){
                print "*";
        }
}

#Mostramos el resultado
print "= $Fac";

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n"; 