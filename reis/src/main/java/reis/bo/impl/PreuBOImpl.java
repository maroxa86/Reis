package reis.bo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import reis.beans.Preu;
import reis.bo.PreuBO;
import reis.dao.PreuDAO;

@Service(value="preuBO")
public class PreuBOImpl implements PreuBO {

	private PreuDAO preuDAO;
	
	@Override
	public List<Preu> carregarPreus() {
		return preuDAO.buscarTodos();
	}

	public PreuDAO getPreuDAO() {
		return preuDAO;
	}

	@Autowired
	public void setPreuDAO(PreuDAO preuDAO) {
		this.preuDAO = preuDAO;
	}

	@Override
	public Preu getPreuById(int idPreu) {
		return preuDAO.buscarPorClave(idPreu);
	}

}
