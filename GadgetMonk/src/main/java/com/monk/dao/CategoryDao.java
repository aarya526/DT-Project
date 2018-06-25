package com.monk.dao;
import java.util.List;

import com.monk.model.Category;


public interface CategoryDao {
	
	    public List<Category> listAllCategory();
		
	    public void saveOrUpdate(Category category);
		
		public Category findCategoryById(int id);
		
		public void deleteCategory(int id);
		
}
