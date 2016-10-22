package reis.bo;

import java.util.List;

import reis.beans.Carrer;

public interface CarrersBO {

	List<Carrer> carregarCarrers();
	Carrer getCarrerById(Integer id);
}
