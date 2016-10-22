package reis.bo;

import java.util.List;

import reis.beans.Tram;

public interface TramBO {
	
	List<Tram> carregarTrams();

	int getTramByCarrerAndPortal(int idCarrer, int portal);
}
