package reis.bo;

import java.util.List;

import reis.beans.Preu;

public interface PreuBO {

	List<Preu> carregarPreus();

	Preu getPreuById(int idPreu);
}
