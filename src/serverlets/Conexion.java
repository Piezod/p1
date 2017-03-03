package serverlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.Normalizer;
import java.util.UUID;

public class Conexion {
	/*
	 * Cabezón
	 */
	private Connection conexion;

	public void conectar() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://31.200.243.193:51987/dbdamproject";
		Connection con = DriverManager.getConnection(url, "usrdamproject", "GgQXVfYTCu3eBsXY");
		if (con != null) {
			conexion = con;
		}

	}

	public boolean comprobarlogin(String user, String pass,String codvalid) throws SQLException {
		boolean enc=false;
		Statement consulta = conexion.createStatement();
		user=user.replaceAll("\'\"\\@\\$", "");
		pass=pass.replaceAll("\'\"\\@\\$", "");
		ResultSet res = consulta.executeQuery(
				"select * from dbdamproject.usuarios where usuario like '" + user + "' and pass like '" + pass + "' and validado like '1'");
		enc= res.next();

		if(!enc){
			Statement consulta2=conexion.createStatement();
			ResultSet res2=consulta2.executeQuery("select * from dbdamproject.usuarios where usuario like '" + user + "' and pass like '" + pass + "' and validacion like '"+codvalid+"' and validado like '0'");
			if(res2.next()){
				Statement consulta3=conexion.createStatement();
				consulta3.executeUpdate("update dbdamproject.usuarios set validacion='0', validado='1' where usuario like '"+user+"'");
				enc=true;
			}
		}
		
		
		return enc;
	}

	private int contar(String query) throws SQLException {
		Statement consulta = conexion.createStatement();
		ResultSet res = consulta.executeQuery(query);
		int dev;
		res.next();
		dev = res.getInt(1);

		return dev;
	}

	public String generarusuario(String nombre, String apellido1, String apellido2) throws SQLException {
		String usuario = "";
		usuario += nombre.charAt(0);
		if (nombre.contains(" ")) {
			usuario += nombre.split(" ")[1].charAt(0);
		}
		usuario += apellido1;
		usuario += apellido2.charAt(0);
		usuario = usuario.toLowerCase();
		int num = contar("select count(*) from dbdamproject.usuarios where usuario like '" + usuario + "'");
		if (num != 0) {
			num++;
			usuario += num;
		}
		usuario=Normalizer.normalize(usuario, Normalizer.Form.NFD).replaceAll("[^a-zA-Z]", "");
		return usuario;
	}

	public void InsertarRegistro(String usuario,String pass,String validacion,String nombre, String apellido1, String apellido2, String email, String curso,
			String ciclo) throws SQLException {
		Statement insertar = conexion.createStatement();

		insertar.executeUpdate("Insert into dbdamproject.usuarios values ('"
				+ usuario + "','"
				+ pass + "','" + nombre + "','" + apellido1
				+ "','" + apellido2 + "','" + validacion + "','" + email
				+ "','" + curso + "','" + ciclo + "','0')");
	}

	public String[] sacarusuarios() throws SQLException {

		String x[] = new String[contar("select count(*) from dbdamproject.usuarios")];

		Statement consulta = conexion.createStatement();
		ResultSet res = consulta.executeQuery("select * from dbdamproject.usuarios");

		int i = 0;
		while (res.next()) {
			x[i] = res.getString(1);
			i++;

		}

		return x;
	}

	public boolean comprobar(String query) throws SQLException {
		Statement consulta = conexion.createStatement();
		ResultSet res = consulta.executeQuery(query);

		return res.next();
	}

	public String recibirdato(String query) throws SQLException {
		Statement consulta = conexion.createStatement();
		ResultSet res = consulta.executeQuery(query);
		res.next();
		return res.getString(1);
	}
}
