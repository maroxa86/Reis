package reis.dao;

import reis.beans.Tram;

public interface TramDAO extends GenericDAO<Tram, Integer> {
	
	int getTramByCarrerAndPortal(int idCarrer, int portal);
}
