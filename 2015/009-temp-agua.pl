#!/usr/bin/perl

#######################################################
#Nombre:    009-temp-agua.pl                          #
#Fecha:     05/03/2015                                #
#Versión:   0.1                                       #
#By:        Christian Medina                          #
#######################################################

#######################################################
#                     Descripción                     #
#                                                     #
#Programas qye determinar en que estado está el agua  #
#en función de su temperatura.                        #
#-Si es negativa el estado será sólido.               #
#-Si es menor que 100 será líquido.                   #
#-Si es mayor que 100 será gas.                       #
#-Pedir al usuario el valor de la temperatura.        #
#######################################################

#Mensaje de Bienvenida
print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\tBIENVENIDOS\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

#Solicitamos el ingreso del numero por teclado
print "Indique el Valor de la Temperatura del Agua: ";
chomp($tem=<STDIN>);

#Comprobación de acuerdo a las indicaciones
#verificamos si es negativo
if ($tem < 0) {
    print "\nEstado del Agua: Solido!";
}
#Verificamos si es menor a 100
elsif ($tem >=0 && $tem < 100) {
    print "\nEstado del Agua: Liquido!";
}
#Es igual o mayor a 100 por lo que mostramos lo siguiente
else {
    print "\nEstado del Agua: Gaseoso!";
}

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";