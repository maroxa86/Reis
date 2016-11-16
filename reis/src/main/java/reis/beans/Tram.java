package reis.beans;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Tram")
public class Tram implements Serializable{

	private static final long serialVersionUID = -2115392662722706377L;
	
	@Id
	@GeneratedValue
	private Integer idTram;
	private String nomTram;
	private Integer sMax;
	private Integer sMin;
	private Integer pMin;
	private Integer pMax;
	private Integer sentit;
	
	@ManyToOne
	@JoinColumn(name="idCarrer")
	private Carrer carrer;

	public Tram() {
		super();
	}

	public Tram(Integer idTram){
		super();
		this.idTram = idTram;
	}
	
	
	public Tram(Integer idTram, String nomTram, Integer sMax, Integer sMin, Integer pMin, Integer pMax, Integer sentit, Carrer carrer) {
		super();
		this.idTram = idTram;
		this.nomTram = nomTram;
		this.sMax = sMax;
		this.sMin = sMin;
		this.pMin = pMin;
		this.pMax = pMax;
		this.sentit = sentit;
		this.carrer = carrer;
	}



	public Integer getIdTram() {
		return idTram;
	}

	public void setIdTram(Integer idTram) {
		this.idTram = idTram;
	}

	public String getNomTram() {
		return nomTram;
	}

	public void setNomTram(String nomTram) {
		this.nomTram = nomTram;
	}

	public Carrer getCarrer() {
		return carrer;
	}

	public void setCarrer(Carrer carrer) {
		this.carrer = carrer;
	}

	public Integer getsMax() {
		return sMax;
	}

	public void setsMax(Integer sMax) {
		this.sMax = sMax;
	}

	public Integer getsMin() {
		return sMin;
	}

	public void setsMin(Integer sMin) {
		this.sMin = sMin;
	}

	public Integer getpMin() {
		return pMin;
	}

	public void setpMin(Integer pMin) {
		this.pMin = pMin;
	}

	public Integer getpMax() {
		return pMax;
	}

	public void setpMax(Integer pMax) {
		this.pMax = pMax;
	}

	public Integer getSentit() {
		return sentit;
	}

	public void setSentit(Integer sentit) {
		this.sentit = sentit;
	}

}
