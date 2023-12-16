package misClases;


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
		
		RequestDispatcher dispatcher=null;
		accion=request.getParameter("accion");
		
		
		if(accion==null||accion.isEmpty())
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
		else if(accion.equals("eliminar"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
			ticketDAO.eliminar(id);
			//dispatcher=request.getRequestDispatcher("vistas/backoffice.jsp");
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
			
			Ticket ticket=new Ticket(0,nombre,apellido,mail,cant,categoria,0);
			ticketDAO.insertarTicket(ticket);
			dispatcher=request.getRequestDispatcher("vistas/conferencia.jsp");
		}
		
		
		
		dispatcher.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doGet(request, response);
	}

}
