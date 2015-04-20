#!usr/bin/perl

print `clear`;

print "Introduzca un Numero: ";
chomp($num = <STDIN>);

print "\nValor Maximo: $num\n\n";

@array = (0..$num);

$i = 2;

while($i*$i <= $num){
	if($array[$i] == $i){
		for($j = $i*$i; $j <= $num; $j+=$i){
			$array[$j] = 0;
		}
	}
	$i = $i > 2 ? $i+2 : $i + 1;
}

#@primos = grep {$_ != 0} @array;
#$" = "\n";
#print "@primos\n";													 