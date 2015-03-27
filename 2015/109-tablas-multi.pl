#!/usr/bin/perl

########################################################
#Nombre:    109-tablas-multi.pl                        #
#Fecha:     27/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Programa con menu que muestra con todas las tablas  #
# de multiplicar o un tabla especifica. El usuario    #
# indica la tabla que desea ver                       #
#######################################################

sub MenBienvenida{
    #Limpiar pantalla
    print `clear`;
        
    print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\tBienvenidos\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
        
    print "==========-----------------------==========";
    print "\n           TABLAS DE MULTIPLICAR\n";
    print "==========-----------------------==========\n\n";   
}

sub MenDespedida{
    #Mensaje de despedida
    print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\t  Adios!!\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
}

sub Menu1{
    do{
        MenBienvenida();
        
        print "OP-[1] VER TODAS LAS TABLAS DE MULTIPLICAR\n";
        print "OP-[2] VER TABLA DE MULTIPLICAR ESPECIFICA\n";
        print "OP-[3] SALIR DEL PROGRAMA :-(\n\n";
        print "ELIJA UNA OPCION: ";
        chomp($op=<STDIN>);
        if($op<1 || $op>3){
            print "\nERROR ==> OPCION INCORRECTA\n\n";
            print "Pulse una tecla para continuar...";
            <STDIN>;
        }
    }while($op<1 || $op>3);
    
    return($op);
}

sub Menu2{
    MenBienvenida();
    print "MENU 2";    
}

sub Tablas{
    MenBienvenida();
    print "TABLAS";
}


#Definicion de variables

#Llamamos a la funcion con el mensaje de bienvenida
$op=Menu1();

$op==1 and Tablas();

$op==2 and Menu2();

MenDespedida();