package greenglobal.pizzahut.services.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import greenglobal.pizzahut.entity.Category;
import greenglobal.pizzahut.entity.Material;
import greenglobal.pizzahut.entity.PizzaSize;

@Repository
public class MaterialDao {
	@PersistenceContext
	private EntityManager em;
	public List<Material> findAll(){
		return em.createQuery("FROM Material",Material.class).getResultList();
	}
	public List<Material> findAllBySize(PizzaSize size,Category c){
		return em.createQuery("SELECT m FROM Material m WHERE pizzasize_id ="+size.getId()+"and category_id ='"+c.getId()+"'",Material.class).getResultList();
	}
}
