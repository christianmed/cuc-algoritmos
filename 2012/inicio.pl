#!/usr/bin/perl
print "Content-type: text/html\n\n";
print<<EOF;

<html>
<body>
   <form action=./formulario.pl  method="post" >
        Nombre: <input type="text" name="nombre" /><br />
        Apellido: <input type="text" name="apellido" />
        <input type="submit" value="Guardar" />
   </form>
</body>
</html>

EOF