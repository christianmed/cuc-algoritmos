#!/usr/bin/perl

########################################################
#Nombre:    019-prestamos.pl                           #
#Fecha:     17/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Una empresa de préstamos decidió cambiar su esquema #
# de cobros así:                                      #
#                                                     #
# · Si el préstamo es de más de 5000 euros, cobra en  #
#   tres cuotas.                                      #
# · Si el préstamo es de menos de 1000 euros, cobra   #
#   en una cuota.                                     #
# · Si el préstamo es entre 2000 y 3000 euros cobra   #
#   en dos cuotas.                                    #
# · En los demás casos cobra en cinco cuotas.         #
#                                                     #
# Adicionalmente, si es de menos de 4000 euros cobra  #
# el 12% de interés, en caso contrario cobra el 10%   #
# de interés. El programa debe decir en cuántas       #
# cuotas debe pagar y de cuánto es cada cuota. Para   #
# ello, se calcula el valor total de la deuda con     #
# interés y se divide en cuotas iguales.              #
#######################################################

#Limpiar pantalla
print `clear`;

#Definicion de variables
my $pres=0;         #prestamo
my $Nc=0;           #numero de cuotas
my $int=0.1;        #intereses 10%
my $Mpc=0;          #monto de cada cuota

#Mensaje de Bienvenida
print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\tBienvenidos\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

print "==========-----------------------==========";
print "\n   VERIFIQUE EL N° DE CUOTAS A PAGAR POR";
print "\n    SU PRESTAMO Y EL MONTO DE CADA UNA\n";
print "==========-----------------------==========\n\n";

#Solicitamos el ingreso del numero por teclado
print "Indique el monto del Prestamo: ";
chomp($pres=<STDIN>);

#Empezamos las comprobaciones
if($pres<4000){
    #si prestamo es menos de 4000 el interes es del 12%
    $int=0.12;
    if($pres<1000){
        #si prestamos es menor a 1000 paga en una cuota
        $Nc=1;
    }
    elsif($pres>=2000 && $pres<=3000){
        #si prestamos esta entre 2000 y 3000 paga en dos cuotas
        $Nc=2;
    }
}
elsif($pres>5000){
    #si prestamos es mayor a 5000 paga en tres cuotas
    $Nc=3;
}
else{
    #en casos distintos a los anteriores paga en cinco cuotas
    $Nc=5;
}

#realizamos el calculo
$Mpc=($pres+($pres*$int))/$Nc;

#mostramos los resultados por pantalla
print "\n- N° de Cuotas a Pagar: $Nc\n";
print "\n- Monto de Cada Cuota: Bs. $Mpc";

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";