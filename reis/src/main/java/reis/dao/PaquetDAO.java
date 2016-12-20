package reis.dao;

import java.util.List;

import reis.beans.Paquet;

public interface PaquetDAO extends GenericDAO<Paquet, Integer>{
	List<Paquet> llistatFinal();
	
	List<Paquet> llistatSenseValidar();
}
