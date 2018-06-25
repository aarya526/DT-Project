package com.monk.dao;

import java.util.List;
import com.monk.model.Product;
public interface ProductDao {
	
	public List<Product> listAllProduct();
	
	public void saveOrUpdate(Product product);
	
	public Product findProductById(int id);
	
	public void deleteProduct(int id);

}
