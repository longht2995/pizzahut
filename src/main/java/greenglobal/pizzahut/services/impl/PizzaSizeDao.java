package greenglobal.pizzahut.services.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import greenglobal.pizzahut.entity.PizzaSize;

@Repository
public class PizzaSizeDao {
	@PersistenceContext
	private EntityManager em;
	@Transactional
	public List<PizzaSize> findAll(){
		return em.createQuery("FROM PizzaSize",PizzaSize.class).getResultList();
	}
}
