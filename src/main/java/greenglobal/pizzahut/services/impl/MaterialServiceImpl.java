package greenglobal.pizzahut.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Service;

import greenglobal.pizzahut.entity.Category;
import greenglobal.pizzahut.entity.Material;
import greenglobal.pizzahut.entity.PizzaSize;
import greenglobal.pizzahut.services.MaterialService;

@Service("materialService")
@Scope(value = "singleton", proxyMode = ScopedProxyMode.TARGET_CLASS)
public class MaterialServiceImpl implements MaterialService{
	@Autowired
	private MaterialDao md;

	public List<Material> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Material> findBySize(PizzaSize p,Category c) {
		// TODO Auto-generated method stub
		return md.findAllBySize(p,c);
	}
	
}
