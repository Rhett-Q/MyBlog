package top.rhett.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import top.rhett.dao.CategoryMapper;
import top.rhett.pojo.Category;
import top.rhett.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	private CategoryMapper categoryMapper;
	
	
	public List<Category> findAllCategory() {
		List<Category> allCategory = categoryMapper.getAllCategory();
		/*System.out.println(allCategory);*/
		return allCategory;
	}

}
