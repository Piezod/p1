<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="Utilidades.Conexion"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Datos Usuario</title>
</head>
<body>
	<%
		Conexion c = (Conexion)session.getAttribute("conexion");
		if (c == null) {
			c = new Conexion();
			c.conectar();
		}

		String usuario = (String) session.getAttribute("usuario");
	%>
	<div class="panel panel-default">
		<div class="panel-heading" align="center">
			<h3 align="center">
				Datos de usuario
				<%=usuario%></h3>
		</div>
		<div class="panel-body" align="center">
			<!-- Este es el estilo para la tabla de los m�viles peque�os y medianos -->
			<div class="hidden-md hidden-lg">
			<table class="table">

				<tr>
					<td>Usuario:</td>
					<td><input type="text" class="form-control"
						value="<%=session.getAttribute("usuario")%>" readonly></td>
				</tr>
				<tr>
					<td>Nombre:</td>
					<td><input type="text" class="form-control"
						value="<%=c.recibirdato("select Nombre from dbdamproject.usuarios where usuario like '"
					+ session.getAttribute("usuario") + "'")%>"
						readonly></td>
				</tr>
				<tr>
					<td>Primer Apellido:</td>
					<td><input type="text" class="form-control"
						value="<%=c.recibirdato("select Apellido1 from dbdamproject.usuarios where usuario like '"
					+ session.getAttribute("usuario") + "'")%>"
						readonly></td>
				</tr>
				<tr>
					<td>Segundo Apellido:</td>
					<td><input type="text" class="form-control"
						value="<%=c.recibirdato("select Apellido2 from dbdamproject.usuarios where usuario like '"
					+ session.getAttribute("usuario") + "'")%>"
						readonly></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="text" class="form-control"
						value="<%=c.recibirdato("select Email from dbdamproject.usuarios where usuario like '"
					+ session.getAttribute("usuario") + "'")%>"
						readonly></td>
				</tr>

			</table>
			</div>
			<div class="hidden-sm hidden-xs">
			<table class="table" style="width: 70%">

				<tr>
					<td>Usuario:</td>
					<td><input type="text" class="form-control"
						value="<%=session.getAttribute("usuario")%>" readonly></td>
				</tr>
				<tr>
					<td>Nombre:</td>
					<td><input type="text" class="form-control"
						value="<%=c.recibirdato("select Nombre from dbdamproject.usuarios where usuario like '"
					+ session.getAttribute("usuario") + "'")%>"
						readonly></td>
				</tr>
				<tr>
					<td>Primer Apellido:</td>
					<td><input type="text" class="form-control"
						value="<%=c.recibirdato("select Apellido1 from dbdamproject.usuarios where usuario like '"
					+ session.getAttribute("usuario") + "'")%>"
						readonly></td>
				</tr>
				<tr>
					<td>Segundo Apellido:</td>
					<td><input type="text" class="form-control"
						value="<%=c.recibirdato("select Apellido2 from dbdamproject.usuarios where usuario like '"
					+ session.getAttribute("usuario") + "'")%>"
						readonly></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="text" class="form-control"
						value="<%=c.recibirdato("select Email from dbdamproject.usuarios where usuario like '"
					+ session.getAttribute("usuario") + "'")%>"
						readonly></td>
				</tr>

			</table>
			</div>
		</div>

	</div>
</body>
<%//c.cerrarconexion(); %>
</html>