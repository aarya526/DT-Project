package com.monk.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.monk.model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao{

	@Autowired
	private SessionFactory sessionFactory;
	

	 private Session getSession() {
		 return sessionFactory.getCurrentSession();
	 }
	
	 @SuppressWarnings("unchecked")
	public List<Product> listAllProduct() {
		Criteria criteria=getSession().createCriteria(Product.class);
		return (List<Product>) criteria.list();
	}

	public void saveOrUpdate(Product product) {
		getSession().saveOrUpdate(product);
		
	}

	public Product findProductById(int id) {
		Product product= (Product) getSession().get(Product.class, id);
		return product;
	}

	public void deleteProduct(int id) {
		Product product= (Product) getSession().get(Product.class, id);
		getSession().delete(product);
		
	}

}
