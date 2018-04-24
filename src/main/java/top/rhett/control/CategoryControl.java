package top.rhett.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import top.rhett.pojo.Category;
import top.rhett.service.CategoryService;

@Controller
public class CategoryControl {
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value="/findAllCategory")
	@ResponseBody
	public List<Category> findAllCategory() {
		List<Category> findAllCategory = categoryService.findAllCategory();
		return findAllCategory;
	}
}
