<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="serverlets.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>



<body >
<!-- **INFORMACION** -->

<!-- Este jsp en un primer momento esta pensado para que sea el cuerpo principal de la aplicacion

	 En el se iran recargando diferentes jsp en la parte central dependiendo de la opcion que nos solicite el usuario.
	 
	 Siempre mantendremos la barra de navegacion superior con sus diferentes opciones y en la parte inferior añadiremos siempre un jsp estatico que sera
	 
	 el pie de la aplicación. Cargar contenido en esta pagina estara gobernado a través de un switch explicado mas adelante. -->

<nav class="navbar navbar-default">
  <div class="container-fluid"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#defaultNavbar1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
      <a class="navbar-brand" href="#">Logotipo</a></div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    
    <div class="collapse navbar-collapse" id="defaultNavbar1">
      <ul class="nav navbar-nav">
      
      <!-- ** Boton del home ** -->
        <li class="active">
        	<form action="ServerletContenido" method="POST">
			<input type="hidden" name="pagina" value="home"></input>
			<button class="btn btn-primary btn-lg active"  type="submit" name="contenido" value="home"><span class="glyphicon glyphicon-home" aria-hidden="true"> </span> </button>			
			</form>
        </li>
        
        <li><a href="#">Usuarios</a></li>
		<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Informacion <span class=" glyphicon glyphicon-pencil" aria-hidden="true"></span><span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#" align="center">Accion1</a></li>
             <li class="divider"></li>
            <li><a href="#" align="center">Accion2</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left" role="search" action="ServeletBusqueda" method="POST" >
        <div class="form-group">
          <input type="text" class="form-control" name="valorbusqueda" placeholder="Busqueda Rapida">
        </div>
        <button type="submit" class="btn btn-default">Enviar</button>
      </form>
      
      
       <div  class="nav navbar-nav navbar-right">
       <a class="navbar-brand" align="right">Bienvenido alumno <span class="label label-success"><%=session.getAttribute("usuario") %></span></a></div>
       
       </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
 
</nav>
</body>
</html>