package com.monk.dao;

import java.util.List;

import com.monk.model.Cart;

public interface CartDao {

	public Cart getCartByid(int cid);
	
//	public Cart getCartByUsername(String username);
	
	public void saveOrUpdate(Cart cart);
	
	public void delete(int cart);
	
	public List<Cart> listAllItems(); 
	
}
