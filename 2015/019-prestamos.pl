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
my $pres=0;
my $Nc=0;
my $int=0.1;
my $Mpc=0;

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

if($pres<4000){
    $int=0.12;
    if($pres<1000){
        $Nc=1;
    }
    elsif($pres>=2000 && $pres<=3000){
        $Nc=2;
    }
}
elsif($pres>5000){
    $Nc=3;
}
else{
    $Nc=5;
}

$Mpc=($pres+($pres*$int))/$Nc;

print "\n- N° de Cuotas a Pagar: $Nc\n";
print "\n- Monto de Cada Cuota: $Mpc\$";

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";