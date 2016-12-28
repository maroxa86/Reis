package reis.dao.impl;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import reis.beans.Paquet;
import reis.dao.PaquetDAO;

@Repository
public class PaquetDAOImpl extends AbstractGenericDAOImpl<Paquet, Integer> implements PaquetDAO {

	@Override
	public List<Paquet> llistatFinal() {
		CriteriaBuilder builder = getManager().getCriteriaBuilder();
		CriteriaQuery<Paquet> criteria = builder.createQuery(Paquet.class);
		Root<Paquet> paquetRoot = criteria.from(Paquet.class);
		criteria.select(paquetRoot);
		criteria.where(builder.isTrue(paquetRoot.get("validat")));
		criteria.orderBy(builder.asc(paquetRoot.get("tram")));
		List<Paquet> listadoPaquets = getManager().createQuery(criteria).getResultList();
		
		return listadoPaquets;
	}

	@Override
	public List<Paquet> llistatSenseValidar() {
		CriteriaBuilder builder = getManager().getCriteriaBuilder();
		CriteriaQuery<Paquet> criteria = builder.createQuery(Paquet.class);
		Root<Paquet> paquetRoot = criteria.from(Paquet.class);
		criteria.select(paquetRoot);
		criteria.where(builder.isFalse(paquetRoot.get("validat")));
		criteria.orderBy(builder.asc(paquetRoot.get("idPaquet")));
		List<Paquet> listadoPaquets = getManager().createQuery(criteria).getResultList();
		
		return listadoPaquets;
	}

}
