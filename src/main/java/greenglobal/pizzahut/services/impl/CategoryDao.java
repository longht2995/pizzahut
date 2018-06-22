package greenglobal.pizzahut.services.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import greenglobal.pizzahut.entity.Category;

@Repository
public class CategoryDao {
	@PersistenceContext
	private EntityManager em;
	public List<Category> findAll(){
		return em.createQuery("FROM Category",Category.class).getResultList();
	}
}
