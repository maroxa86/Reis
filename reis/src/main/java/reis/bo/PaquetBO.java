package reis.bo;

import java.util.List;

import reis.beans.Paquet;

public interface PaquetBO {

	void insertar(Paquet paquet);

	List<Paquet> carregarPaquets();
	
	List<Paquet> getLlistatPaquetsFinal();

	void salvar(Paquet paquet);

	Paquet getPaquetById(String idPaquet);

	void borrar(Integer idPaquet);

	void validarPaquet(Paquet paquet);

}
