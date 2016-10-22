package reis.managedBeans;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.model.SelectItem;

import reis.beans.Preu;
import reis.bo.PreuBO;

@ManagedBean(name="preuManagedBeans")
public class PreuManagedBeans {

	private List<SelectItem> llistatPreu;
	
	@ManagedProperty("#{preuBO}")
	private PreuBO preuBO;
	
	public PreuManagedBeans(){
		super();
	}
	
	@PostConstruct
	public void init(){
		List<Preu> preus = preuBO.carregarPreus();
		llistatPreu = new ArrayList<>();
        for (Preu preu : preus) {
        	llistatPreu.add(new SelectItem(preu.getIdTamanyPaquet(), preu.getTamanyPaquet()));
        }
	}

	public List<SelectItem> getLlistatPreu() {
		return llistatPreu;
	}

	public void setLlistatPreu(List<SelectItem> llistatPreu) {
		this.llistatPreu = llistatPreu;
	}

	public PreuBO getPreuBO() {
		return preuBO;
	}

	public void setPreuBO(PreuBO preuBO) {
		this.preuBO = preuBO;
	}
	
}
