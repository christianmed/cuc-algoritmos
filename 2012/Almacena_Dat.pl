#!\user\bin\perl'
#Nombre      :  Almacena_Dat.pl 
#Autor       :  Juan Carlos Ramos
#Descripcion :  Almacenamiento de Datos en un archivo y mostrar el contenido.
#  ---          Cedula, Nombre, Apellido, Fecha de Nacimiento, Teléfono
# Fecha      :  21 / 06 /2012

do{
        # Limpia pantalla
        print `clear`;

        ###############################################
        # Rutina Menu de Opciones
        print "\n* * * Opciones para Almacenar Datos * * *";
        print "\n*                                       *";
        print "\n* *   1.- Ingreso de Datos            * *";
        print "\n*                                       *";
        print "\n* *   2.- Mostrar Datos               * *";
        print "\n*                                       *";
        print "\n* * ** * ** * ** * * * * ** * ** * ** * *";
        print "\n*                                       *";
        print "\n*  Por Favor Indique la Opcion deseada. *";
        print "\n*                                       *";
        print "\n* *      0.- para finalizar           * *";
        print "\n*                                       *";
        print "\n* * ** * ** * ** * * * * ** * ** * ** * *\n";

        # captura opcion a usar
        print "\n-------->";
        chomp($opc=<STDIN>);

        if($opc==1){
                ############################################### 
                # Rutina de Ingreso de datos
                
                # Abrir Archivo de almacenamiento
                open(ArchivoEntrada,">>Personal.AGD")or die "No esta el Archivo: $!";

                # Se inicializan variables
                $cedula=1;

                #  Inicia Ciclo de ingreso de datos solicitados por teclado

                while(!($cedula==0)){

                        print `clear`;
                        $cedula=0;

                        print "\n* * * Por Favor Igrese sus datos a continuación * * *\n";
                        print "\nCedula, / [0]<-para Finalizar:";
                        chomp($cedula=<STDIN>);

                        if(!($cedula==0)){
                                print "\nNombre:";
                                chomp($nombre=<STDIN>);
                                print "\nApellido:";
                                chomp($apellido=<STDIN>);
                                print "\nFecha Nacimiento:";
                                chomp($fechanac=<STDIN>);
                                print "\nTelefono:";
                                chomp($telef=<STDIN>);
                                print ArchivoEntrada "$cedula\t$nombre\t$apellido\t$fechanac\t$telef\n";
                                print "\n";
                        }
                }
                # Cierra Archivo
                close (ArchivoEntrada);

                # Fin Rutina de ingreso de Datos
        }

        if($opc==2){
                ############################################### 
                # Rutina de Mostrar el Contenido del Archivo

                #Limpia pantalla
                print `clear`;

                print "\n*** Mostrar contenido de Datosw Almacenados ***";
                open(ArchivoSalida,"Personal.AGD")or die "No esta el Archivo: $!";

                # Lee primera linea de datos del Archivo
                $text=<ArchivoSalida>;

                # Imprime encabezado
                print "\n\n";
                print "Cedula\t\tNombre\tApellido\tNacimiento\ttelefono\n\n";
                while($text){
                      print"$text";
                      $text=<ArchivoSalida>;
                }
                print "\n";
                print "\npor Favor, Presione Cualquier tecla para continuar\n\n";
                chomp($tcl=<STDIN>);

                # Cierra Archivo
                close (ArchivoSalida);
        }

}while(!($opc == 0));

#Limpia pantalla
print `clear`;

print"\n\n\n\n\n\n\n\n\n\nGracias por Almacenar Los datos\n\n         Fin\n\n";