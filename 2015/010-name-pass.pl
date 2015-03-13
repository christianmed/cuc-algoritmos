#!/usr/bin/perl

########################################################
#Nombre:    010-name-pass.pl                           #
#Fecha:     04/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

########################################################
#Descripción: programa que pide ingresar por teclado   #
#             el login y el password.                  #
#             Si son correcto muestra un mensaje de    #
#             aceptación, de lo contrario mostrar un   #
#             mensaje de rechazo.                      #
########################################################


my $name="christian";
my $pass="1234caracas";

print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\tBienvenidos\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n\n";

print "Usuario:    ";
chomp($name1=<STDIN>);
print "Contraseña: ";
chomp($pass1=<STDIN>);

if($name eq $name1 && $pass eq $pass1){
    print "\nHola de nuevo Christian!\n\n\n";
}
else{
    print "\nError en el Usuario o en la Contraseña. Adios!\n\n\n";
}