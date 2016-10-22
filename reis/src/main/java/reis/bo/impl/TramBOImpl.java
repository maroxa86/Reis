package reis.bo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import reis.beans.Tram;
import reis.bo.TramBO;
import reis.dao.TramDAO;

@Service(value="tramBO")
public class TramBOImpl implements TramBO {

	private TramDAO tramDAO;
	
	public TramBOImpl(){
		super();
	}

	public TramDAO getTramDAO() {
		return tramDAO;
	}

	@Autowired
	public void setTramDAO(TramDAO tramDAO) {
		this.tramDAO = tramDAO;
	}

	@Override
	public List<Tram> carregarTrams() {
		return tramDAO.buscarTodos();
	}

	@Override
	public int getTramByCarrerAndPortal(int idCarrer, int portal) {
		return tramDAO.getTramByCarrerAndPortal(idCarrer, portal);
	}
}
