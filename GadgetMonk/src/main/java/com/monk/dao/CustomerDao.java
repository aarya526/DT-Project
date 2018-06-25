package com.monk.dao;

import java.util.List;

import com.monk.model.Customer;


public interface CustomerDao {
	
	public List<Customer> listAllCustomers();
	
	public void saveOrUpdate(Customer customer);
	
	public Customer findCustomerById(int id);
	
	public void deleteCustomer(int id);
	
}
