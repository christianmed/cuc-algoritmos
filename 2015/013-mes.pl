#!/usr/bin/perl

########################################################
#Nombre:    013-mes.pl                                 #
#Fecha:     07/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Programa que pide un numero del 1 al 12 y muestra   #
# el nombre del mes.                                  #
# Se comprueba que los numeros esten dentro del rango #
#######################################################

#Limpiamos la pantalla
print `clear`;

#Definicion de variables

#Mensaje de Bienvenida
print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\tBienvenidos\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

#Solicitamos el ingreso del numero por teclado
#Comprobamos que sea > 0 y < 13
do{
        print "Introduzca un Numero: ";
        chomp($n=<STDIN>);
}while($n<1 || $n>12);

#Asignamos el nombre del mes a la variable $n de acuerdo
#al numero introducido
if($n==1){
        $n="Enero";
}
elsif($n==2){
        $n="Febrero"
}
elsif($n==3){
        $n="Marzo";
}
elsif($n==4){
        $n="Abril";
}
elsif($n==5){
        $n="Mayo";
}
elsif($n==6){
        $n="Junio";
}
elsif($n==7){
        $n="Julio";
}
elsif($n==8){
        $n="Agosto";
}
elsif($n==9){
        $n="Septiembre";
}
elsif($n==10){
        $n="Octubre";
}
elsif($n==11){
        $n="Noviembre";
}
else{$n="Diciembre"};

#Mostramos el resultado
print "\nMes: $n";

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n"; 