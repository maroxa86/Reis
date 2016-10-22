package reis.beans;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="carrer")
public class Carrer implements Serializable{

	private static final long serialVersionUID = -5305793885022114265L;

	@Id
	@GeneratedValue
	private Integer idCarrer;
	private String nombre;

	@OneToMany(fetch = FetchType.EAGER)
	@JoinColumn(name="idCarrer")
	private List<Tram> listadoTrams;

	public Carrer() {
		super();
	}
	
	public Carrer(Integer idCarrer, String nombre) {
		super();
		this.idCarrer = idCarrer;
		this.nombre = nombre;
	}

	public Carrer(Integer idCarrer) {
		super();
		this.idCarrer = idCarrer;
	}

	public Integer getIdCarrer() {
		return idCarrer;
	}

	public void setIdCarrers(Integer idCarrer) {
		this.idCarrer = idCarrer;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public List<Tram> getListadoTrams() {
		return listadoTrams;
	}

	public void setListadoTrams(List<Tram> listadoTrams) {
		this.listadoTrams = listadoTrams;
	}
}
