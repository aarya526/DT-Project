package com.monk.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monk.model.Cart;
import com.monk.model.Product;

@Repository
@Transactional
public class CartDaoImpl implements CartDao{

	@Autowired
	private SessionFactory sessionFactory;
 
	public SessionFactory getSessionFactory() {
		return sessionFactory.getCurrentSession().getSessionFactory();
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	public Cart getCartByid(int cid) {
		
		List l = sessionFactory.getCurrentSession().createQuery("from cart where cid = :id").setInteger("id", cid).list();
		
		if(l.size()>0) {
			return (Cart)l.get(0);
		}else {
			return null;
		}
	}


	public void saveOrUpdate(Cart cart) {
		
		sessionFactory.getCurrentSession().save(cart);
		
	}

	public void delete(int cid) {
	
		System.out.println("delete:" + cid);
		
		sessionFactory.getCurrentSession().createQuery("delete from Cart where cid=:id").setInteger("id", cid).executeUpdate();
		
	}

	public List<Cart> listAllItems() {
		return sessionFactory.getCurrentSession().createQuery("from Cart").list();
	}

	
	
	

	
}