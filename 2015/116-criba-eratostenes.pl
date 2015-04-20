#!usr/bin/perl

use Scalar::Util 'looks_like_number';

do{
    print `clear`;
    print "===============-------------===============\n";
    print "     NUMEROS PRIMOS DENTRO DE UN RANGO\n";
    print "===============--------------===============\n\n";
    
    print "Introduzca el Valor Maximo del Rango (>=2): ";
    chomp($num = <STDIN>);
    
    if(!looks_like_number($num) || $num < 2){
        print "\nERROR ---> No Introdujo un Numero >= 2\n\n";
        print "Pulse una tecla para continuar..."; <STDIN>;
    }
}while(!looks_like_number($num) || $num < 2);

@array = (0..$num);
$i = 2;

while($i * $i <= $num){
    if($array[$i] == $i){
        for($j = $i * $i; $j <= $num; $j+=$i){
            $array[$j] = 0;
        }
    }
    $i = $i > 2 ? $i+2 : $i+1;
}

#@primos = grep {$_ != 0} @array;

#print "\n@primos\n\n";													 
