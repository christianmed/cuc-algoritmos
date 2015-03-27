#!/usr/bin/perl

########################################################
#Nombre:    102-promedio-edades.pl                     #
#Fecha:     27/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Programa que lee las edades y notas de un grupo de  #
# alumnos (definido por el usuario) y calcula los     #
# promedios.                                          #
#######################################################

#Funcion Mensaje de Bienvenida
sub MenBienvenida{
    #Limpiar pantalla
    print `clear`;
    
    print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\tBienvenidos\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
    
    print "==========-----------------------==========";
    print "\n        PROMEDIO DE EDADES Y NOTAS\n";
    print "==========-----------------------==========\n\n";
}

#Funcion Mensaje de despedida
sub MenDespedida{
    print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\t  Adios!!\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
}

#Definicion de variables
my $Sumaedad = 0;
my $Sumanota = 0;

#Llamamos a la funcion con el mensaje de bienvenida
MenBienvenida();
    
print "Indique la Cantidad de Alumnos: ";
chomp($Talumnos=<STDIN>);

for($i=1; $i<=$Talumnos; $i++){
    #Llamamos a la funcion con el mensaje de bienvenida
    MenBienvenida();
    
    print "ALUMNO $i\n";
    print "\nEdad: ";
    chomp($edad=<STDIN>);
    print "Nota: ";
    chomp($nota=<STDIN>);
    
    $Sumaedad+=$edad;
    $Sumanota+=$nota;
}

$PromedioEdades=$Sumaedad/$Talumnos;
$PromedioNotas=$Sumanota/$Talumnos;

#Llamamos a la funcion con el mensaje de bienvenida
MenBienvenida();

print "Promedio de Edades: $PromedioEdades\n";
print "\nPromerio de Notas: $PromedioNotas";

#Llamamos a la funcion con el mensaje de despedida
MenDespedida();