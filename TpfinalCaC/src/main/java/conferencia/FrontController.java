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
		
		
		/* if(accion==null||accion.isEmpty())
		{
			dispatcher=request.getRequestDispatcher("vistas/conferencia.jsp");
		}
		else if(accion.equals("comprar"))
		{
			dispatcher=request.getRequestDispatcher("vistas/comprar-tickets.jsp");
		}
		else if(accion.equals("backoffice"))
		{
			dispatcher=request.getRequestDispatcher("vistas/backoffice.jsp");
		}
		else if(accion.equals("panelTickets")) {
			dispatcher=request.getRequestDispatcher("vistas/panel-tickets.jsp");
		}
		else if(accion.equals("panelOradores")) {
			dispatcher=request.getRequestDispatcher("vistas/panel-oradores.jsp");
		}
		else if(accion.equals("eliminar"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
			ticketDAO.eliminar(id);
		}
		else if(accion.equals("eliminarOrador")) 
		{
			int id=Integer.parseInt(request.getParameter("id"));
			oradorDAO.eliminar(id);
			dispatcher=request.getRequestDispatcher("vistas/panel-oradores.jsp");
		}
		else if(accion.equals("volver"))
		{
			dispatcher=request.getRequestDispatcher("vistas/conferencia.jsp");
		}
		else if(accion.equals("insertar"))
		{
			String nombre=request.getParameter("nombre");
			String apellido=request.getParameter("apellido");
			String mail=request.getParameter("mail");			
			int cant=Integer.parseInt(request.getParameter("cant"));			
			int categoria=Integer.parseInt(request.getParameter("categoria"));
			float total;
			
			//total = tendria que ser el resultado de cantidad de ticket por tipoTicket
			
			TicketCompra ticket=new TicketCompra(0,nombre,apellido,mail,cant,categoria,0);
			ticketDAO.insertarTicket(ticket);
			dispatcher=request.getRequestDispatcher("vistas/conferencia.jsp");
		} */
		if(accion==null || accion.isEmpty()) {
			dispatcher=request.getRequestDispatcher("vistas/conferencia.jsp");
		}
		else if(accion.equals("comprar")) {
			dispatcher=request.getRequestDispatcher("vistas/comprar-tickets.jsp");
		}
		else if(accion.equals("backoffice")) {
			dispatcher=request.getRequestDispatcher("vistas/backoffice.jsp");
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
			int categoria=Integer.parseInt(request.getParameter("categoria"));
			
			float total=0;
			int valorTicket= 200;
			
			switch(categoria) {
			  case 1:
				  total=cant*(valorTicket - (valorTicket * 0.8f)); //categoria "Estudiante" - descuento del 80%
			    break;
			  case 2:
				  total=cant*(valorTicket - (valorTicket * 0.5f)); //categoria "Trainee" - descuento del 50%
			    break;
			  case 3:
				  total=cant*(valorTicket - (valorTicket * 0.15f)); //categoria "Junior" - descuento del 15%
				break;
			}
			
			TicketCompra ticket=new TicketCompra(0,nombre,apellido,mail,cant,categoria,total);
			ticketDAO.insertarTicket(ticket);
			dispatcher=request.getRequestDispatcher("vistas/comprar-tickets.jsp");	
			
		}
		else if(accion.equals("insertarOrador")) {
			String nombreOrador=request.getParameter("nombre");
			String apellidoOrador=request.getParameter("apellido");
			String mensajeOrador=request.getParameter("msj");			
			
			Oradores orador=new Oradores(0,nombreOrador,apellidoOrador,mensajeOrador);
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
