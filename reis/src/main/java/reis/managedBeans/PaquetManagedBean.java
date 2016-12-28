package reis.managedBeans;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.model.SelectItem;
import javax.servlet.http.HttpServletRequest;

import org.primefaces.context.RequestContext;

import reis.beans.Carrer;
import reis.beans.Paquet;
import reis.beans.Preu;
import reis.beans.Tram;
import reis.bo.CarrersBO;
import reis.bo.PaquetBO;
import reis.bo.PreuBO;
import reis.bo.TramBO;

@ManagedBean(name="paquetManagedBeans")
@ApplicationScoped
public class PaquetManagedBean implements Serializable{

	private static final long serialVersionUID = 6930584197140836692L;

	private String id;
	private String nom;
	private String carrer;
	private String telefon;
	private String portal;
	private String observacions;
	private String paquet;
	private String tram;
	private String idTamanyPreu;
	private List<SelectItem> llistatCarrersCombo;
	private List<SelectItem> llistatPreuCombo;
	
	@ManagedProperty("#{paquetBO}")
	private PaquetBO paquetBO;
	
	@ManagedProperty("#{carrersBO}")
	private CarrersBO carrerBO;

	@ManagedProperty("#{tramBO}")
	private TramBO tramBO;
	
	@ManagedProperty("#{preuBO}")
	private PreuBO preuBO;

	public PaquetManagedBean(){
		super();
	}
	
	@PostConstruct
	public void init(){
		inicialitzarComboCarrers();
		inicialitzarComboPreus();
	}
	
	private void inicialitzarComboPreus() {
		List<Preu> llistatPreus = preuBO.carregarPreus();
		llistatPreuCombo = new ArrayList<>();
		for(Preu preu : llistatPreus){
			llistatPreuCombo.add(new SelectItem(preu.getIdTamanyPaquet(), preu.getTamanyPaquet()));
		}
	}

	private void inicialitzarComboCarrers() {
		List<Carrer> llistatCarrers = carrerBO.carregarCarrers();
		llistatCarrersCombo = new ArrayList<>();
		for(Carrer carrer : llistatCarrers){
			llistatCarrersCombo.add(new SelectItem(carrer.getIdCarrer(), carrer.getNombre()));
		}
	}

	public void insertar(){
		if(carrer != null && idTamanyPreu != null){
			int idTram = tramBO.getTramByCarrerAndPortal(Integer.parseInt(carrer), Integer.parseInt(portal));
			if(idTram > 0){
				Paquet paquet = new Paquet();
				paquet.setNom(nom);
				paquet.setObservacions(observacions);
				paquet.setPortal(Integer.parseInt(portal));
				paquet.setTelefon(Integer.parseInt(telefon));
				Preu preu = preuBO.getPreuById(Integer.parseInt(idTamanyPreu));
				paquet.setPreu(preu);
				
				
				paquet.setTram(new Tram(idTram));
				
				paquetBO.insertar(paquet);
				
				id = "";
				nom = "";
				carrer = "";
				telefon = "";
				portal = "";
				observacions = "";
				this.paquet = "";
				tram = "";
				idTamanyPreu = "";
				
				String missatge = "El tram del paquet es: " + paquet.getTram().getIdTram() + "<br/>El numero de paquet es el: " + paquet.getIdPaquet() + "<br/>El preu del paquet es: " + paquet.getPreu().getPreu() +" euros";
				
				FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, "Paquet Guardat", missatge);
		        
		        RequestContext.getCurrentInstance().showMessageInDialog(message);
			}
			else{
				FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_ERROR, "ERROR FALTA INFORMACIÓ",
						"NO EXISTEIX EL NUMERO DE PORTAL EN AQUEST CARRER");
				RequestContext.getCurrentInstance().showMessageInDialog(message);
			}
		}
		else{
			FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_ERROR, "ERROR FALTA INFORMACIÓ",
					"NO S'HA INDICAT EL CARRER O EL TAMANY DEL PAQUET");
			RequestContext.getCurrentInstance().showMessageInDialog(message); 
		}
	}

	public void salvar(){
		if(carrer != null && idTamanyPreu != null){
			int idTram = tramBO.getTramByCarrerAndPortal(Integer.parseInt(carrer), Integer.parseInt(portal));
			if(idTram > 0){
				
				Paquet paquet = new Paquet();
				paquet.setIdPaquet(Integer.valueOf(id));
				paquet.setNom(nom);
				paquet.setObservacions(observacions);
				paquet.setPortal(Integer.parseInt(portal));
				paquet.setTelefon(Integer.parseInt(telefon));
				Preu preu = preuBO.getPreuById(Integer.parseInt(idTamanyPreu));
				paquet.setPreu(preu);
				
				paquet.setTram(new Tram(idTram));

				paquetBO.salvar(paquet);

				String missatge = "El tram del paquet es: " + paquet.getTram().getIdTram() + "<br/>El numero de paquet es el: " + paquet.getIdPaquet() + "<br/>El preu del paquet es: " + paquet.getPreu().getPreu() +" euros";
				
				FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, "Paquet Guardat", missatge);
		        
		        RequestContext.getCurrentInstance().showMessageInDialog(message);
			}
			else{
				FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_ERROR, "ERROR FALTA INFORMACIÓ",
						"NO EXISTEIX EL NUMERO DE PORTAL EN AQUEST CARRER");
				RequestContext.getCurrentInstance().showMessageInDialog(message);
			}
		}
		else{
			FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_ERROR, "ERROR FALTA INFORMACIÓ",
					"NO S'HA INDICAT EL CARRER O EL TAMANY DEL PAQUET");
			RequestContext.getCurrentInstance().showMessageInDialog(message); 
		}
	}
	
	public void editar(String idPaquet){
		Paquet paquet = paquetBO.getPaquetById(idPaquet);
		id = paquet.getIdPaquet().toString();
		nom = paquet.getNom();
		carrer = paquet.getTram().getCarrer().getIdCarrer().toString();
		telefon = paquet.getTelefon().toString();
		portal = paquet.getPortal().toString();
		observacions = paquet.getObservacions();
		idTamanyPreu = paquet.getPreu().getIdTamanyPaquet().toString();
	}
	
	public void borrar(String idPaquet){
		Paquet paquet = paquetBO.getPaquetById(idPaquet);
		
		paquetBO.borrarPaquet(paquet);
	}
	
	public void validar(String idPaquet) throws IOException{
		Paquet paquet = paquetBO.getPaquetById(idPaquet);
		
		paquetBO.validarPaquet(paquet);
		
		ExternalContext ec = FacesContext.getCurrentInstance().getExternalContext();
	    ec.redirect(((HttpServletRequest) ec.getRequest()).getRequestURI());
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getCarrer() {
		return carrer;
	}

	public void setCarrer(String carrer) {
		this.carrer = carrer;
	}

	public String getTelefon() {
		return telefon;
	}

	public void setTelefon(String telefon) {
		this.telefon = telefon;
	}

	public String getObservacions() {
		return observacions;
	}

	public void setObservacions(String observacions) {
		this.observacions = observacions;
	}

	public String getPaquet() {
		return paquet;
	}

	public void setPaquet(String paquet) {
		this.paquet = paquet;
	}

	public String getTram() {
		return tram;
	}

	public void setTram(String tram) {
		this.tram = tram;
	}

	public String getPortal() {
		return portal;
	}

	public void setPortal(String portal) {
		this.portal = portal;
	}

	public String getIdTamanyPreu() {
		return idTamanyPreu;
	}

	public void setIdTamanyPreu(String idTamanyPreu) {
		this.idTamanyPreu = idTamanyPreu;
	}

	public PaquetBO getPaquetBO() {
		return paquetBO;
	}

	public void setPaquetBO(PaquetBO paquetBO) {
		this.paquetBO = paquetBO;
	}

	public List<SelectItem> getLlistatCarrersCombo() {
		return llistatCarrersCombo;
	}

	public void setLlistatCarrersCombo(List<SelectItem> llistatCarrersCombo) {
		this.llistatCarrersCombo = llistatCarrersCombo;
	}

	public List<SelectItem> getLlistatPreuCombo() {
		return llistatPreuCombo;
	}

	public void setLlistatPreuCombo(List<SelectItem> llistatPreuCombo) {
		this.llistatPreuCombo = llistatPreuCombo;
	}

	public CarrersBO getCarrerBO() {
		return carrerBO;
	}

	public void setCarrerBO(CarrersBO carrerBO) {
		this.carrerBO = carrerBO;
	}

	public TramBO getTramBO() {
		return tramBO;
	}

	public void setTramBO(TramBO tramBO) {
		this.tramBO = tramBO;
	}

	public PreuBO getPreuBO() {
		return preuBO;
	}

	public void setPreuBO(PreuBO preuBO) {
		this.preuBO = preuBO;
	}

}
