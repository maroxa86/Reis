package reis.beans;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="preu")
public class Preu implements Serializable{

	private static final long serialVersionUID = -6979743142816672563L;

	@Id
	private Integer idTamanyPaquet;
	private String tamanyPaquet;
	private Integer preu;
	
	public Preu(){
		
	}

	public Preu(Integer idTamanyPaquet, String tamanyPaquet, Integer preu) {
		super();
		this.idTamanyPaquet = idTamanyPaquet;
		this.tamanyPaquet = tamanyPaquet;
		this.preu = preu;
	}

	public Preu(Integer idTamanyPreu) {
		this.idTamanyPaquet = idTamanyPreu;
	}

	public Integer getIdTamanyPaquet() {
		return idTamanyPaquet;
	}

	public void setIdTamanyPaquet(Integer idTamanyPaquet) {
		this.idTamanyPaquet = idTamanyPaquet;
	}

	public String getTamanyPaquet() {
		return tamanyPaquet;
	}

	public void setTamanyPaquet(String tamanyPaquet) {
		this.tamanyPaquet = tamanyPaquet;
	}

	public Integer getPreu() {
		return preu;
	}

	public void setPreu(Integer preu) {
		this.preu = preu;
	}
	
}
