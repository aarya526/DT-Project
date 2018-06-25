package com.monk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.monk.dao.CartDao;
import com.monk.dao.CustomerDao;
import com.monk.dao.ProductDao;
import com.monk.model.Cart;
import com.monk.model.Customer;
import com.monk.model.Product;

class Sample{
	
	private int id = 0;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
}

@RestController
public class CartRESTController {
	
	@Autowired
	CustomerDao customerDao;
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	CartDao cartDao;
	


	ObjectMapper om = new ObjectMapper();
	
	@RequestMapping(value="/fetchAllCartItems",method=RequestMethod.POST)
	public String fetchAllCartItems() throws Exception {
	    
        
		
		List <Cart> list = cartDao.listAllItems();
		
		for( Cart c : list ) {
			c.setCustomer(customerDao.findCustomerById(c.getCustomerId()));
			c.setProduct(productDao.findProductById(c.getPid()));
		}
		
		String s = om.writeValueAsString(list);
		
		System.out.println(s);
		
		return s;
			
	}
	
	@RequestMapping(value="/deleteFromCart/{id}",method=RequestMethod.GET)
	public String deleteFromCart(@PathVariable("id") int id) {
	    
		try {
		
			cartDao.delete(id);
			
			return "{\"msg\":\"Deleted\"}";
			
		}
		catch( Exception e ) {
			
			e.printStackTrace();
			
			return "{\"msg\":\"Failure\"}";
			
		}
		
			
	}
		
}

