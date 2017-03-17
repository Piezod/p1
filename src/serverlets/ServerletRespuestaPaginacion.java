package serverlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServerletRespuestaPaginacion
 */
@WebServlet("/ServerletRespuestaPaginacion")
public class ServerletRespuestaPaginacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServerletRespuestaPaginacion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: dogetdelserverlet respuesta paginacion ").append(request.getContextPath());
		
		/*
		 * Serverlet de metodo get, recogera los parametros de los pie de pagina
		 * 
		 */
		HttpSession sesion= request.getSession(true);
		
		System.out.println("Serverletrespuestapaginacion valores pagpulsada,inicio,fin"+Integer.parseInt(request.getParameter("pagpulsada"))+Integer.parseInt(request.getParameter("inicio"))+Integer.parseInt(request.getParameter("fin")));
		if (request.getParameter("pagpulsada")!=null)
		{
				sesion.setAttribute("pagpulsada", Integer.parseInt(request.getParameter("pagpulsada"))); // Nos dice la pagina que ha sido pulsada para que esa sea pulsada y cambie el formato
				sesion.setAttribute("iniciores", Integer.parseInt(request.getParameter("inicio"))); // Nos dice el valor inicial de la busqueda en la query
				sesion.setAttribute("finres", Integer.parseInt(request.getParameter("fin"))); //este dato suele ser 10, es el que nos dice cuantos mostraremos en pantalla
				
				
				/*
				 * Recogemos en la url una variable nombre pag que contendra un valor que sera la redireccion de la pagina
				 */
				
				switch (request.getParameter("pag")) {
				case "respuesta":
					response.sendRedirect("respuesta");
					break;
				case "busqueda":
					response.sendRedirect("search1");
					break;
				default:
					break;
				}
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
