#!usr/bin/perl

#######################################################
#                     Descripción                     #
#                                                     #
#programa que muestra los numeros primos de un Rango  #
#definido por el usuario. Se debe indicar valor       #
#minimo y valor maximo.                               #
#######################################################

sub esPrimo{
    my $num = shift;
    my $div = 2;
    my $i   = 2;
    
    for($i=2; $i<$num; $i++){
        if(!($num % $i)){
            $div+=1;
        }
    }
    
    $div == 2 ? return($num) : return(0);
}

print `clear`;

print "Indique Valor Minimo: ";
chomp($min=<STDIN>);
print "Indique Valor Maximo: ";
chomp($max=<STDIN>);

for ($i=$min; $i<=$max; $i++){
    ($primo = esPrimo($i)) and print "$primo ";
}

print "\n\n";