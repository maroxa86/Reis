package reis.managedBeans;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import reis.beans.Tram;
import reis.bo.TramBO;

@ManagedBean(name="tramManagedBeans")
@ViewScoped
public class TramManagedBeans {

	private List<Tram> llistatTrams;
	
	@ManagedProperty("#{tramBO}")
	private TramBO tramBO;
	
	public TramManagedBeans() {
		super();
	}

	@PostConstruct
	public void init(){
		llistatTrams = tramBO.carregarTrams();
	}
	
	public List<Tram> getLlistatTrams() {
		return llistatTrams;
	}

	public void setLlistatTrams(List<Tram> llistatTrams) {
		this.llistatTrams = llistatTrams;
	}

	public TramBO getTramBO() {
		return tramBO;
	}

	public void setTramBO(TramBO tramBO) {
		this.tramBO = tramBO;
	}
	
}
