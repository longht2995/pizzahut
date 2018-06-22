package greenglobal.pizzahut.services;

import greenglobal.pizzahut.entity.Log;
import java.util.List;

public interface MyService {

	Log addLog(Log log);

	List<Log> getLogs();

	void deleteLog(Log log);
}
