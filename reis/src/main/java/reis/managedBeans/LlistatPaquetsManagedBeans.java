package reis.managedBeans;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.RequestScoped;

import reis.beans.Paquet;
import reis.bo.PaquetBO;

@ManagedBean(name="llistatPaquetsManagedBeans")
@RequestScoped
public class LlistatPaquetsManagedBeans {

	private List<Paquet> llistatPaquets;
	private Paquet paquetSeleccionat;
	
	@ManagedProperty("#{paquetBO}")
	private PaquetBO paquetBO;
	
	
	public LlistatPaquetsManagedBeans(){
		super();
	}
	
	@PostConstruct
	public void init(){
		llistatPaquets = paquetBO.carregarPaquets();
	}

	public List<Paquet> getLlistatPaquets() {
		return llistatPaquets;
	}

	public void setLlistatPaquets(List<Paquet> llistatPaquets) {
		this.llistatPaquets = llistatPaquets;
	}

	public PaquetBO getPaquetBO() {
		return paquetBO;
	}

	public void setPaquetBO(PaquetBO paquetBO) {
		this.paquetBO = paquetBO;
	}

	public Paquet getPaquetSeleccionat() {
		return paquetSeleccionat;
	}

	public void setPaquetSeleccionat(Paquet paquetSeleccionat) {
		this.paquetSeleccionat = paquetSeleccionat;
	}
	
}
