package conferencia;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
   
    public FrontController() 
    {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//ticketDAO
		String accion=null;
		TicketDAO ticketDAO=null;
		try
		{
			ticketDAO=new TicketDAO();
		}
		catch(ClassNotFoundException e)
		{
			System.out.println(e);
		}
		
		//oradoresDAO
		OradoresDAO oradorDAO= null;
		try
		{
			oradorDAO= new OradoresDAO();
		}
		catch(ClassNotFoundException e)
		{
			System.out.println(e);
		}
		
		RequestDispatcher dispatcher=null;
		accion=request.getParameter("accion");
		
		
		
		if(accion==null || accion.isEmpty()) {
			dispatcher=request.getRequestDispatcher("vistas/conferencia.jsp");
		}
		else if (accion.equals("login")) {
		    String username = request.getParameter("username");
		    String password = request.getParameter("password");

		    // Verifica las credenciales (esto es muy básico, en un entorno real deberías usar un sistema más seguro)
		    if ("admin".equals(username) && "12345".equals(password)) {
		        // Credenciales válidas, establece una variable de sesión para marcar al usuario como autenticado
		        request.getSession().setAttribute("usuarioAutenticado", true);
		        dispatcher = request.getRequestDispatcher("vistas/backoffice.jsp");
		    } else {
		        // Credenciales incorrectas, podrías redirigir a una página de error o volver al formulario de inicio de sesión
		        dispatcher = request.getRequestDispatcher("vistas/error-login.jsp");
		    }
		}
		else if(accion.equals("comprar")) {
			dispatcher=request.getRequestDispatcher("vistas/comprar-tickets.jsp");
		}
		else if (accion.equals("backoffice")) {
		    // Verifica si el usuario está autenticado
		    Boolean usuarioAutenticado = (Boolean) request.getSession().getAttribute("usuarioAutenticado");

		    if (usuarioAutenticado != null && usuarioAutenticado) {
		        // El usuario está autenticado, redirige a la página de backoffice
		        dispatcher = request.getRequestDispatcher("vistas/backoffice.jsp");
		    } else {
		        // El usuario no está autenticado, redirige a la página de inicio de sesión
		        dispatcher = request.getRequestDispatcher("vistas/login.jsp");
		    }
		}
		else if(accion.equals("eliminar")) {
			int id=Integer.parseInt(request.getParameter("id"));
			ticketDAO.eliminar(id);
			dispatcher=request.getRequestDispatcher("vistas/panel-tickets.jsp");
		}
		else if(accion.equals("eliminarOrador")) {
			int id=Integer.parseInt(request.getParameter("id"));
			oradorDAO.eliminar(id);
			dispatcher=request.getRequestDispatcher("vistas/panel-oradores.jsp");
		}
		else if(accion.equals("volver")) {
			dispatcher=request.getRequestDispatcher("vistas/conferencia.jsp");
		}
		else if(accion.equals("insertar")) {
			String nombre=request.getParameter("nombre");
			String apellido=request.getParameter("apellido");
			String mail=request.getParameter("mail");			
			int cant=Integer.parseInt(request.getParameter("cant"));			
			String categoriaStr = request.getParameter("categoria");
			int categoria;

			if ("Estudiante".equals(categoriaStr)) {
			    categoria = 1;
			} else if ("Trainee".equals(categoriaStr)) {
			    categoria = 2;
			} else if ("Junior".equals(categoriaStr)) {
			    categoria = 3;
			} else {
			    // Manejar el caso en que la categoría no sea válida
			    categoria = 0; // Otra categoría o valor predeterminado
			}

			float total = 0;
			int valorTicket = 200;

			switch (categoria) {
			    case 1:
			        total = cant * (valorTicket - (valorTicket * 0.8f)); // categoría "Estudiante" - descuento del 80%
			        break;
			    case 2:
			        total = cant * (valorTicket - (valorTicket * 0.5f)); // categoría "Trainee" - descuento del 50%
			        break;
			    case 3:
			        total = cant * (valorTicket - (valorTicket * 0.15f)); // categoría "Junior" - descuento del 15%
			        break;
			}

			TicketCompra ticket = new TicketCompra(0, nombre, apellido, mail, cant, categoria, total);
			ticketDAO.insertarTicket(ticket);
			dispatcher = request.getRequestDispatcher("vistas/comprar-tickets.jsp");
	
		}
		else if(accion.equals("insertarOrador")) {
			String nombreOrador=request.getParameter("nombreOrador");
			String apellidoOrador=request.getParameter("apellidoOrador");
			String tematicaOrador=request.getParameter("tematicaOrador");			
			
			Oradores orador=new Oradores(0,nombreOrador,apellidoOrador,tematicaOrador);
			oradorDAO.insertarOradores(orador);
			dispatcher=request.getRequestDispatcher("vistas/backoffice.jsp");
		}
		else if(accion.equals("panelTickets")) {
			dispatcher=request.getRequestDispatcher("vistas/panel-tickets.jsp");
		}
		else if(accion.equals("panelOradores")) {
			dispatcher=request.getRequestDispatcher("vistas/panel-oradores.jsp");
		}

		dispatcher.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doGet(request, response);
	}

}
