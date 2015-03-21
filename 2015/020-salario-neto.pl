#!/usr/bin/perl

########################################################
#Nombre:    020-salario-neto.pl                        #
#Fecha:     18/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Calcular el salario neto de un trabajador de una    #
# empresa cuyo trabajo se paga por horas. Introducir  #
# por teclado el número de horas y el precio de la    #
# hora. El cálculo se realiza del siguiente modo:     #
#                                                     #
# · Las primeras 35 horas de cada semana se pagan a   #
#   la tarifa normal (suponer 4 semanas al mes).      #
# · Las horas extras se pagan un 50% más que las      #
#   normales.                                         #
# · Los impuestos a deducir a los trabajadores        #
#   varían en función de su sueldo mensual            #
#   (considerando las horas extras trabajadas):       #
#                                                     #
#   · Si el sueldo es menor de Bs. 7000, libre de     #
#     impuestos.                                      #
#   · Si el sueldo está entre Bs. 7000 y Bs. 12000,   #
#     los impuestos son el 20%.                       #
#   · Si el sueldo es mayor de Bs. 12000, el 30%.     #
#######################################################

#Funcion Mensaje de Bienvenida
sub MenBienvenida{
    print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\tBienvenidos\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
    
    print "==========-----------------------==========";
    print "\n          CALCULE SU SALARIO NETO\n";
    print "==========-----------------------==========\n\n";
}

#Funcion Mensaje de despedida
sub MenDespedida{
    print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\t  Adios!!\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
}

#Definicion de variables
my $horas           = 0; 
my $precio_hora     = 0;
my $salario_semana  = 0;
my $horas_extra     = 0;
my $salario_global  = 0;
my $salario_neto    = 0;
my $Thoras          = 0;
my $ThorasR         = 0;
my $Thoras_extra    = 0;
my $impuesto        = 0;

#Al suponer 4 semanas se deben solicitar 4 veces los datos necesarios para realizar los calculos
for($i=1; $i<=4; $i++){
    
    #Limpiamos la pantalla
    print `clear`;
    
    #Llamamos a la funcion con el mensaje de bienvenida
    MenBienvenida();
    
    #Mostramos por pantalla el numero de la semana del mes en cuestion
    print "-SEMANA $i\n\n";
    print " Horas Trabajadas: ";
    chomp($horas=<STDIN>);
    print " Precio por Hora: ";
    chomp($precio_hora=<STDIN>);
    
    #vamos sumando todas las horas trabajas en las 4 semanas
    $Thoras+=$horas;
    
    #Cuando horas sea menor o igual a 35
    if($horas<=35){
        #vamos sumando las horas regulares de cada semana
        $ThorasR+=$horas;
        #calculamos el salario en base a las horas y al precio por hora
        $salario_semanal=$precio_hora*$horas;
    }
    #Cuando horas sea mayor a 35
    else{
        #vamos sumando las horas regulares de cada semana
        $ThorasR+=35;
        #calculamos las horas extra
        $horas_extra=$horas-35;
        #vamos sumando las horas extra se cada semana
        $Thoras_extra+=$horas_extra;
        #calculamos el salario en base a las horas regulares y al precio por hora mas las horas extra y el precio por hora con incremento del 50%
        $salario_semanal=(($precio_hora*35) + ($horas_extra*($precio_hora+($precio_hora*0.5))));
    }
    
    #vamos sumando el salario por semana
    $salario_global+=$salario_semanal;
    
    #cuando el bucle este por terminar limpiamos la pantalla y volvemos a mostrar el mensaje de bienvenida (por estetica xD)
    if($i==4){
        print `clear`;
        MenBienvenida();
    }
}

#calculamos el impuesto a deducir de acuerdo al salario global
if($salario_global>=7000 && $salario_global<=12000){
    #Si el salario esta entre 7000 y 12000 sera del 20%
    $impuesto=0.2;
}
else{
    #Si el salario es mayor a 12000 sera del 30%
    $impuesto=0.3;
}
#El impuesto por defecto es del 0% y aplica cuando el salario es inferior a 7000

#se calcula el monto a deducir
$deduccion=$salario_global*$impuesto;
#se calcula finalmente el salario neto del trabajador
$salario_neto=$salario_global-$deduccion;

#Mostramos los los resultados por pantalla
print "Horas Trabajadas en el Mes: $Thoras";
print "\nTotal Horas Regulares: $ThorasR";
print "\nTotal Horas Extra:      $Thoras_extra";
print "\n\nSalario Global = Bs. $salario_global";
print "\nDeducciones    = Bs.  $deduccion-";
print "\n\nSalario Neto   = Bs. $salario_neto";

#Llamamos a la funcion con el mensaje de despedida
MenDespedida();