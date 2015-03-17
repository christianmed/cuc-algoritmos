#!/usr/bin/perl

########################################################
#Nombre:    018-pvp.pl                                 #
#Fecha:     16/03/2015                                 #
#Versión:   0.1                                        #
#By:        Christian Medina                           #
########################################################

#######################################################
#                     Descripción                     #
#                                                     #
# El dueño de una papelería desea un programa que le  #
# indique el precio de venta de un artículo dado. El  #
# precio se calcula de acuerdo con la siguiente       #
# fórmula: PVP = precio_coste + ganancia. Donde la    #
# ganancia será:                                      #
#                                                     #
#  • El 15% si el precio de coste es inferior Bs. 3.  #
#  • 50 céntimos si el precio de coste está entre     #
#  	 Bs. 3 y Bs. 6.                                   #
#  • El 25% si el precio de coste supera los Bs. 6.   #
#######################################################

do{
	#Limpiar pantalla
	print `clear`;

	#Definicion de variables
	my $pvp=0;
	my $pc=0;
	my $gn=0;

	#Mensaje de Bienvenida
	print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
	print "\t\tBienvenidos\n";
	print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";

	print "==========-----------------------==========";
	print "\n    PRECIO DE VENTA DE LOS ARTICULOS\n";
	print "==========-----------------------==========\n\n";

	#Solicitamos el ingreso del numero por teclado
	print "Indique el Precio de Coste: ";
	chomp($pc=<STDIN>);

	if($pc>=0 && $pc<3){
		$pvp=$pc+($pc*0.15);
	}
	elsif($pc>=3 && $pc<=6){
		$pvp=$pc+0.5;
	}
	else{
		$pvp=$pc+($pc*0.25);
	}
	print "\nEl Precio de venta es de Bs. $pvp\n";

	print "\nDesea calcular el Precio de otro Articulo (s/n): ";
	chomp($op=<STDIN>);
}while($op eq "s" || $op eq "S");

#Mensaje de despedida
print "\n=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n";
print "\t\t  Adios!!\n";
print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n\n";