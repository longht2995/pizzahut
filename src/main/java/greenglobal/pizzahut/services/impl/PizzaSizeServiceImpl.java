package greenglobal.pizzahut.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;

import greenglobal.pizzahut.entity.PizzaSize;
import greenglobal.pizzahut.services.PizzaSizeService;

@Service("pizzasizeService")
@Scope(value = "singleton", proxyMode = ScopedProxyMode.TARGET_CLASS)
public class PizzaSizeServiceImpl implements PizzaSizeService{
	@Autowired
	private PizzaSizeDao pz;

	public List<PizzaSize> findAll() {
		// TODO Auto-generated method stub
		return pz.findAll();
	}
	
}
