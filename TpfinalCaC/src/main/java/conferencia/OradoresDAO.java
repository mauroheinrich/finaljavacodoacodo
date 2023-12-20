package conferencia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OradoresDAO {
	
	//instancio conexion a BD
	Connection conexion=null;		
	
	public OradoresDAO() throws ClassNotFoundException
	{
		ConexionBD con=new ConexionBD();
		conexion=con.getConnection();
	}
	
	//metodo recuperar/lectura
	public List<Oradores> listarOrador()
	{
		PreparedStatement ps;
		ResultSet rs;
		List<Oradores> listaOrador=new ArrayList<>();
		
		try
		{
			ps=conexion.prepareStatement("select * from oradores");
			rs=ps.executeQuery();
			
			while(rs.next())
			{
				int id=rs.getInt("id");
				String nombre=rs.getString("nombre");
				String apellido=rs.getString("apellido");
				String tematica=rs.getString("tematica");
				
				Oradores orador=new Oradores(id,nombre,apellido,tematica);
				listaOrador.add(orador);
			}
			return listaOrador;				
		}
		catch(SQLException e)
		{
			System.out.println(e);
			return null;
		}	
	}	
		
		
	//metodo para insertar
	public boolean insertarOradores(Oradores oradores) 
	{
		PreparedStatement ps;
			
		try
		{
			ps=conexion.prepareStatement("insert into oradores(nombre,apellido,tematica) " + "values (?,?,?)");
						
			ps.setString(1, oradores.getNombre());
			ps.setString(2, oradores.getApellido());
			ps.setString(3, oradores.getTematica());
			
			ps.execute();
			return true;
		}
		catch(SQLException e)
		{
			System.out.println(e);
			return false;
		}
	}
		
	//metodo eliminar
	public boolean eliminar(int _id)
	{
		PreparedStatement ps;
		try
		{
			ps=conexion.prepareStatement("delete from oradores where id=?");
			ps.setInt(1, _id);
			ps.execute();
			return true;			
		}
			
		catch(SQLException e)
		{
			System.out.println(e);
			return false;			
		}
		
	}	
	
	
	
	
	
}
