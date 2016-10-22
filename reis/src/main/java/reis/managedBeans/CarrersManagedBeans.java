package reis.managedBeans;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.RequestScoped;
import javax.faces.model.SelectItem;

import reis.beans.Carrer;
import reis.bo.CarrersBO;

@ManagedBean(name="carrersManagedBeans")
@RequestScoped
public class CarrersManagedBeans {
	
	private String idCarrers;
	private String nom;
	private List<Carrer> llistatCarrers;
	private List<SelectItem> llistatCarrersCombo;
	
	@ManagedProperty("#{carrersBO}")
	private CarrersBO carrersBO;
	
	public CarrersManagedBeans(){
		super();
	}
	
	@PostConstruct
	public void init(){
		llistatCarrers = carrersBO.carregarCarrers();
		llistatCarrersCombo = new ArrayList<>();
		for(Carrer carrer : llistatCarrers){
			llistatCarrersCombo.add(new SelectItem(carrer.getIdCarrer(), carrer.getNombre()));
		}
	}
	
	public List<Carrer> getLlistatCarrers() {
		return llistatCarrers;
	}

	public void setLlistatCarrers(List<Carrer> llistatCarrers) {
		this.llistatCarrers = llistatCarrers;
	}
	
	public CarrersBO getCarrersBO() {
		return carrersBO;
	}

	public void setCarrersBO(CarrersBO carrersBO) {
		this.carrersBO = carrersBO;
	}
	
	public String getIdCarrers() {
		return idCarrers;
	}

	public void setIdCarrers(String idCarrers) {
		this.idCarrers = idCarrers;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public void altaCarrer(){
		setIdCarrers("");
		setNom("");
	}

	public List<SelectItem> getLlistatCarrersCombo() {
		return llistatCarrersCombo;
	}

	public void setLlistatCarrersCombo(List<SelectItem> llistatCarrersCombo) {
		this.llistatCarrersCombo = llistatCarrersCombo;
	}
	
	
}
