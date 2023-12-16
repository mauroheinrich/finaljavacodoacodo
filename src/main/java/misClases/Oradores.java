package misClases;

public class Oradores {

	private int id;
	private String nombre;
	private String apellido;
	private String tematica;
	
	//getters y setters
	
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
	public String getTematica() {
		return tematica;
	}
	public void setTematica(String tematica) {
		this.tematica = tematica;
	}
	
	//Contructores
	
	public Oradores(int id, String nombre, String apellido, String tematica) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.tematica = tematica;
	}
	
	
}
