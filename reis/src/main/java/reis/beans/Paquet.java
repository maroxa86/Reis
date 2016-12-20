package reis.beans;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

@Entity
@Table(name="paquet")
public class Paquet implements Serializable{
	private static final long serialVersionUID = -7931494800616391212L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer idPaquet;
	private Integer portal;
	private String nom;
	private Integer telefon;
	private String observacions;
	
	@Column(nullable = false)
	@Type(type = "org.hibernate.type.NumericBooleanType")
	private boolean validat;
	
	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="idTram")
	private Tram tram;
	
	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="idTamanyPaquet")
	private Preu preu;

	public Paquet(){
		super();
	}
	
	public Paquet(Integer idPaquet) {
		super();
		this.idPaquet = idPaquet;
	}

	public Paquet(Integer idPaquet, Integer portal, String nom, Integer telefon, String observacions,
			Tram tram, Preu preu, boolean validat) {
		super();
		this.idPaquet = idPaquet;
		this.portal = portal;
		this.nom = nom;
		this.telefon = telefon;
		this.observacions = observacions;
		this.tram = tram;
		this.preu = preu;
		this.validat = validat;
	}

	public Integer getIdPaquet() {
		return idPaquet;
	}

	public void setIdPaquet(Integer idPaquet) {
		this.idPaquet = idPaquet;
	}

	public Integer getPortal() {
		return portal;
	}

	public void setPortal(Integer portal) {
		this.portal = portal;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public Integer getTelefon() {
		return telefon;
	}

	public void setTelefon(Integer telefon) {
		this.telefon = telefon;
	}

	public String getObservacions() {
		return observacions;
	}

	public void setObservacions(String observacions) {
		this.observacions = observacions;
	}

	public Preu getPreu() {
		return preu;
	}

	public void setPreu(Preu preu) {
		this.preu = preu;
	}

	public Tram getTram() {
		return tram;
	}

	public void setTram(Tram tram) {
		this.tram = tram;
	}

	public boolean isValidat() {
		return validat;
	}

	public void setValidat(boolean validat) {
		this.validat = validat;
	}
	
}
