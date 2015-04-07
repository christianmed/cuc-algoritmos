#!/usr/bin/perl

########################################################
#Nombre:    110-fibonacci.pl                           #
#Fecha:     07/04/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
# Programa que calcula la suma de N terminos
#######################################################

#Funcion Mensaje de Bienvenida
sub MenBienvenida{
    print `clear`;
    
    print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\tBIENVENIDOS\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
    
    print "==========-----------------------==========";
    print "\n              SERIE FIBONACCI\n";
    print "==========-----------------------==========\n\n";
}

#Funcion Mensaje de despedida
sub MenDespedida{
    print "\n\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
    print "\t\t  Adios!!\n";
    print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";
}

sub Fibo{
    my $n = shift;
    my $a = 0;
    my $b = 1;
    my $i = 1;
    
    if($n == 0 || $n ==1){
        return $n;
    }
    else{
        for($i; $i<$n; $i++){
            $c = $a+$b;
            $a = $b;
            $b = $c;
        }
    }
    return $b;
}

MenBienvenida();

print "Cantidad de Terminos a Sumar: ";
chomp($num=<STDIN>);

print "\nFibonacci($num): ", Fibo($num);

#Llamamos a la funcion con el mensaje de despedida
MenDespedida();

=begin
#!usr/bin/perl

print `clear`;

print "Valor: ";
chomp($n=<STDIN>);

print "Fibonacci($n) = ", fibo($n), "\n";

sub fibo{
    $num = shift;
    $a, $b = (0, 1);
    
    if ($num == 0 || $num == 1) {
        return $num;
    }
    else { 
        for($i=1; $i<$num; $i++) {
            #print "$b, ";
            $c = $a + $b;
            $a = $b;
            $b = $c;
        }
    }
    return($b);
}
=cut