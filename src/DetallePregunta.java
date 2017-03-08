

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import serverlets.Conexion;

/**
 * Servlet implementation class DetallePregunta
 */
@WebServlet(description = "Serverlet que sera llamado cuando queramos ir al detalle de una pregunta redirigida desde otro jsp", urlPatterns = { "/DetallePregunta" })
public class DetallePregunta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetallePregunta() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		HttpSession sesion= request.getSession(true);
			System.out.println("Estoy en detallepregnta java");
			System.out.println("la id que recojo es "+request.getParameter("idpregunta"));
			/*
			 * Sacamos el usuario que ha realizado la pregunta 
			 */
			request.getAttribute("titulo");
			int idpregunta= Integer.parseInt(request.getParameter("idpregunta"));
				sesion.setAttribute("idpregunta", idpregunta);
				sesion.setAttribute("contenido", "Respuesta");
				response.sendRedirect("Inicio");
		
	}

}
