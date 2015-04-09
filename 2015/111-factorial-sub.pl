#!usr/bin/perl

########################################################
#Nombre:    111-factorial-sub.pl                       #
#Fecha:     08/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Programa que calcula el factorial de un numero in-  #
# troducido por el usuario (debe ser mayor o igual a  #
# 0) a través de una función                          #
#######################################################

#Función Mensaje de Bienvenida
sub MenBienvenida{
    #Limpiamos la pantalla
    print `clear`;
    print "\n==========-----------------------==========\n";
    print "\t\tBIENVENIDOS\n";
    print "==========-----------------------==========\n";
    print "==========-----------------------==========\n";
    print "        DETERMINAR EL FACTORIAL DE N\n";
    print "==========-----------------------==========\n\n";
}

#Función Mensaje de despedida
sub MenDespedida{
    print "\n\n==========-----------------------==========\n";
    print "\t\t  ADIOS!!\n";
    print "==========-----------------------==========\n\n";
}

#Función para solitar un valor
sub SolicitarNumero{
    print "Introduzca un Numero Entero Positivo: ";
    chomp($num=<STDIN>);
    return $num;
}

#Función para determinar el factorial de un numero
sub Factorial{
    my $n = shift;
    #Comprobamos si N es igual a 0 o a 1 ya que en ambos casos el factorial es 1
    if($n < 2){
        return 1;
    }
    #Si N es diferente de o y de 1 hacemos el cálculo
    else{
        return $n*Factorial($n-1);
    }
}

#=================----->Cuerpo del Programa

#Solicitamos el valor de N al usuario (N debe ser >=0)
do{
    #Mostramos el mensaje de bienvenida
    MenBienvenida();
    #Solicitamos el valor de N al usuario
    $n = SolicitarNumero();
}while($n < 0);

#Pasamos el valor de N a la funcion Factorial y mostramos el resultado
print "\n!$n = ", Factorial($n);

#Llamamos a la funcion con el mensaje de despedida
MenDespedida();