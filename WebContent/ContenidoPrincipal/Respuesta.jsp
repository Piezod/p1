<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="serverlets.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!doctype html>
<html>
<head>
 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../Bootstrap/js/jquery-1.11.3.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../Bootstrap/js/bootstrap.min.js"></script>
<link href="../Bootstrap/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="../Bootstrap/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<title>Respuesta</title>
</head>

	
	

<body>
<div class="container-fluid">
<div class="row">
  <div class="col-md-offset-0 col-md-12">
  	<ol class="breadcrumb">
  		<li><a href="#">Inicio</a></li>
  		<li class="active">Data</li>
	</ol>
</div>
<div class="row" style="margin-top: 5%">
	    <div class="col-md-8 col-md-offset-2">
			<div class="panel panel-info">
					  <div class="panel-heading">
						<h3 class="panel-title" align="center">aqui recargo de bd titulo pregunta</h3>
					  </div>
					  
					  <div class="panel-footer" align="center">
					   <% 
			   	        /*
			   	        Aqui estoy recargando los nombres del usuario de momento , habra que validar que si esta pulsado las mas visitas recargar
			   	        las preguntas segun el boton del tab pulsado.
			   	        */
			   		 	Conexion c=new Conexion();
			    		c.conectar();
			    			String[]x=c.sacartodaslaspreguntas();
			    		for (int i=0;i<c.sacartodaslaspreguntas().length;i++)
			    		{
			    		 %>
			    			<hr><h1></h1>
			    			<a href="#">La pregunta de este usuario <%=x[i] %></a><br>
			    			<code><%=x[i] %></code><code>Etiqueta2</code>
			    		<%
			    		}
			    		
			    		%>
			    	 </div>
			</div>

		  </div>
	</div>
</div>

</body>
</html>

</body>
</html>