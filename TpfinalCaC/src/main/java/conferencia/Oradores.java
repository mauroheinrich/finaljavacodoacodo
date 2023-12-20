package conferencia;

public class Oradores {
	
	//atributos
	private int id;
	private String nombre;
	private String apellido;
	private String msj;
	
	//constructor
	public Oradores(int id, String nombre, String apellido, String msj)
	{
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.msj = msj;
	}
	
	//getter y setter
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getMsj() {
		return msj;
	}
	public void setMsj(String msj) {
		this.msj = msj;
	}
	
}
