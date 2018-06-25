package com.monk.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.monk.model.Customer;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	 private Session getSession() {
		 return sessionFactory.getCurrentSession();
	 }
	 
	
	@SuppressWarnings("unchecked")
	public List<Customer> listAllCustomers() {
		Criteria criteria=getSession().createCriteria(Customer.class);
		return (List<Customer>) criteria.list();
	}

	public void saveOrUpdate(Customer customer) {
		getSession().saveOrUpdate(customer);
		
	}

	public Customer findCustomerById(int id) {
		Customer customer= (Customer) getSession().get(Customer.class, id);
		return customer;
	}

	public void deleteCustomer(int id) {
		Customer customer= (Customer) getSession().get(Customer.class, id);
		getSession().delete(customer);
		
	}




	
}


	



	



