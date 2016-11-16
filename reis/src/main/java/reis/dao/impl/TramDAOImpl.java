package reis.dao.impl;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import reis.beans.Tram;
import reis.dao.TramDAO;

@Repository
public class TramDAOImpl extends AbstractGenericDAOImpl<Tram, Integer> implements TramDAO {

	@Override
	public int getTramByCarrerAndPortal(int idCarrer, int portal) {
		CriteriaBuilder builder = getManager().getCriteriaBuilder();
		CriteriaQuery<Tram> criteria = builder.createQuery(Tram.class);
		Root<Tram> tramRoot = criteria.from(Tram.class);
		criteria.select(tramRoot);
		if(portal % 2 == 0){
			criteria.where(builder.and(
					builder.le(tramRoot.get("pMin"), portal),
					builder.ge(tramRoot.get("pMax"), portal),
					builder.equal(tramRoot.get("carrer"), idCarrer)));
		}
		else{
			criteria.where(builder.and(
					builder.le(tramRoot.get("sMin"), portal),
					builder.ge(tramRoot.get("sMax"), portal),
					builder.equal(tramRoot.get("carrer"), idCarrer)));
		}
		
		Tram tram = getManager().createQuery(criteria).getSingleResult();
		return tram.getIdTram();
	}

}
