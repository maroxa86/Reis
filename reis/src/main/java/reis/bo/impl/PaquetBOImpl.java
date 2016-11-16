package reis.bo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import reis.beans.Paquet;
import reis.bo.PaquetBO;
import reis.dao.PaquetDAO;

@Service(value="paquetBO")
public class PaquetBOImpl implements PaquetBO {

	private PaquetDAO paquetDAO;
	
	@Override
	public void insertar(Paquet paquet) {
		paquetDAO.insertar(paquet);
	}

	public PaquetDAO getPaquetDAO() {
		return paquetDAO;
	}

	@Autowired
	public void setPaquetDAO(PaquetDAO paquetDAO) {
		this.paquetDAO = paquetDAO;
	}

	@Override
	public List<Paquet> carregarPaquets() {
		return paquetDAO.buscarTodos();
	}

}
