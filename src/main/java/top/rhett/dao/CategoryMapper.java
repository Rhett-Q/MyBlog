package top.rhett.dao;

import java.util.List;

import top.rhett.pojo.Category;

public interface CategoryMapper {
	List<Category> getAllCategory();
	
	Category getCategoryById(int categoryId);
	
}
