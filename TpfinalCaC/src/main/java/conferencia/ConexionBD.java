package conferencia;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConexionBD {

public String driver= "com.mysql.cj.jdbc.Driver";
	
	public Connection getConnection() throws ClassNotFoundException
	{
		Connection conexion=null;
		try
		{
			Class.forName(driver);
			conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectofinalcodoacodo","root","");
		}
		catch(SQLException e)
		{
			System.out.println(e);
		}
		
		return conexion;
	}
	public static void main(String[] args) throws ClassNotFoundException, SQLException 
	{
		Connection conexion=null;
		ConexionBD con=new ConexionBD();
		conexion=con.getConnection();
		
		PreparedStatement ps;
		ResultSet rs;
		
		ps=conexion.prepareStatement("SELECT * from tickets");
		rs=ps.executeQuery();
		
		while (rs.next())
		{
			String nombre=rs.getString("nombre");
			System.out.println("El nombre del dato en la tabla es: "+nombre);
		}
	}
}
	

