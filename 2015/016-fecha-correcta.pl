#!/usr/bin/perl

########################################################
#Nombre:    016-fecha-correcta.pl
#Fecha:     12/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#-------------------------------------------------------------------------------
# Solicitar al usuario una fecha (dd:mm:aaaa) y comprobar si es correcta.
# Para que una fecha sea correcta es necesario:

# · El año debe ser mayor que cero.
# · El mes debe estar entre 1 y 12.
# · Dependiendo del mes que sea, el día debe estar dentro de los límites
#   válidos.
# · Los meses que tienen 31 días son 1, 3, 5, 7, 8, 10 y 12.
# · Los meses de 30 días son 4, 6, 9 y 11.
# · El mes de 28 días es 2, excepto en un año bisiesto que es 29 días.
#-------------------------------------------------------------------------------

#Declaracion de variables
my $D=0;
my $M=0;
my $A=0;
my $Bis=0;
my $Dmax=0;

#Limpiamos la pantalla
print `clear`;

#Mensaje de Bienvenida
print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\tBienvenidos\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

print "==========-----------------------==========";
print "\n    VERIFICAR SI UNA FECHA ES CORRECTA\n";
print "==========-----------------------==========\n\n";

print "Introduzca una fecha (dd/mm/aaaa): ";
chomp($fecha=<STDIN>);

#Separamos la cadena introducida en varios elementos con split
#Y los guardamos en sus respectivas variables
($d, $m, $a)=split('/', $fecha);

#print "\n$d $m $a\n";

#Comprobamos los valores de dia, med y año
if((($d>=1 && $d<=31) && ($m>=1 && $m<=12)) && $a>0){
    #Año y Mes Correcto
    $A=1;
    $M=1;

    #En los meses Abr, Jun, Sep y Nov hay 30 dias
    if(($m==4 || $m==6) || ($m==9 || $m==11)){
        $Dmax=30;
    }
    #En Feb hay 28 dias excepto en los años bisiestos
    elsif($m==2){
        #Comprobamos si el años es bisiesto
        if((($a%4==0) && ($a%100!=0)) || ($a%400==0)){
            $Dmax=29;
        }
        #Si es un año regular
        else{
            $Dmax=28;
        }
    }
    #El resto de los meses tienen 31 dias
    else{
        $Dmax=31
    }

    #Si el valor de dia esta dentro del rango de cada mes entonces es Correcto
    if($d<=$Dmax){

        $D=1;
    }
}

#Mostramos el mensaje final segun los resultados
if(($D==1 && $M==1) && $A==1){
    print "\n    ==-----==FECHA CORRECTA==-----==";
}
else{
    print "\n    ==-----==FECHA INCORRECTA==-----==";
}

#Mensaje de despedida
print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n"; 