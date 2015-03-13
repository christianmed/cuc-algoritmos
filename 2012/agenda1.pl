# !/usr/bin/perl 

open(AA,">>Agenda.dap") || die "No pudo abrirse: $!";

$Nomb="9";

while(<$Nomb != "">) {
    #    print `clear`;
    print "Por favor ingrese los siguientes Datos\n";
    print "\nNombre   : ";
    chomp($Nomb = <STDIN>);

    if(<$Nomb != "">){
        print "\nApellido : ";
        chomp($Apel = <STDIN>);
        print "Fecha Nac. : ";
        chomp($Naci = <STDIN>);
        print "Telefono   : ";
        chomp($telf = <STDIN>);
        print AA "$Nomb|$Apel|$Naci|$telf\n";
    }
}

close(AA);