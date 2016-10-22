package reis.bo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import reis.beans.Carrer;
import reis.bo.CarrersBO;
import reis.dao.CarrersDAO;

@Service(value="carrersBO")
public class CarrersBOImpl implements CarrersBO {

	private CarrersDAO carrersDAO;
	
	public CarrersBOImpl(){
		super();
	}
	
	@Override
	public List<Carrer> carregarCarrers() {
		return carrersDAO.buscarTodos();
	}

	@Override
	public Carrer getCarrerById(Integer id) {
		return carrersDAO.buscarPorClave(id);
	}
	
	public CarrersDAO getCarrersDAO() {
		return carrersDAO;
	}

	@Autowired
	public void setCarrersDAO(CarrersDAO carrersDAO) {
		this.carrersDAO = carrersDAO;
	}

}
