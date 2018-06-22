package greenglobal.pizzahut.services;

import java.util.List;

import greenglobal.pizzahut.entity.Category;
import greenglobal.pizzahut.entity.Material;
import greenglobal.pizzahut.entity.PizzaSize;

public interface MaterialService {
	public List<Material> findAll();
	public List<Material> findBySize(PizzaSize p,Category c);
}
