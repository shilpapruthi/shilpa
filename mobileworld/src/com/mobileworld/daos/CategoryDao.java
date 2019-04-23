package com.mobileworld.daos;

import java.util.List;

import com.mobileworld.models.Category;

public interface CategoryDao {
	
	public boolean addCategory(Category categoryObj);
	public boolean deleteCategory(int catId);
	public boolean updateCategory(Category categoryObj);
	public Category getCategoryById(int catId);
	public List<Category> getAllCategories();
	
	
}
