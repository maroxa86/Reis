package reis.bo.impl;

import java.util.List;

import javax.faces.bean.ApplicationScoped;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import reis.beans.Paquet;
import reis.bo.PaquetBO;
import reis.dao.PaquetDAO;

@Service(value="paquetBO")
@ApplicationScoped
public class PaquetBOImpl implements PaquetBO {

	private PaquetDAO paquetDAO;
	
	public PaquetDAO getPaquetDAO() {
		return paquetDAO;
	}

	@Autowired
	public void setPaquetDAO(PaquetDAO paquetDAO) {
		this.paquetDAO = paquetDAO;
	}

	@Override
	public List<Paquet> carregarPaquets() {
		return paquetDAO.llistatSenseValidar();
	}

	@Override
	public List<Paquet> getLlistatPaquetsFinal() {
		return paquetDAO.llistatFinal();
	}
	
	@Override
	public void insertar(Paquet paquet) {
		paquetDAO.insertar(paquet);
	}
	
	@Override
	public void salvar(Paquet paquet) {
		paquetDAO.salvar(paquet);
	}

	@Override
	public Paquet getPaquetById(String idPaquet) {
		return paquetDAO.buscarPorClave(Integer.valueOf(idPaquet));
	}

	@Override
	public void borrar(Integer idPaquet) {
		paquetDAO.borrar(new Paquet(idPaquet));
	}

	@Override
	public void validarPaquet(Paquet paquet) {
		paquet.setValidat(true);
		paquetDAO.salvar(paquet);
	}
	
}
