package reis.bo;

import java.util.List;

import reis.beans.Paquet;

public interface PaquetBO {

	void insertar(Paquet paquet);

	List<Paquet> carregarPaquets();
	
	List<Paquet> getLlistatPaquetsFinal();

}
