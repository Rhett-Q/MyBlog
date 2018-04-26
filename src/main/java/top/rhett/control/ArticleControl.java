package top.rhett.control;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import top.rhett.pojo.Article;
import top.rhett.pojo.Category;
import top.rhett.pojo.PageBean;
import top.rhett.service.ArticleService;
import top.rhett.service.CategoryService;

@Controller
@RequestMapping("/admin")
public class ArticleControl {
	
	@Autowired
	private ArticleService articleService;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/article")
	public String article(Model model) {
		return "article";
	}
	
	@RequestMapping("/publishArticle")
	public String publishArticle(Article article) {
		articleService.publishArticle(article);
		return "index";
	}
	
	@RequestMapping("/articleList")
	public String queryArticleByPage(Model model, PageBean pageBean) {
		
		articleService.queryArticlesByPage(pageBean);
	/*	System.out.println(pageBean);*/
		
		return "articleList";
	}
	
	@RequestMapping("/editArticle")
	public String editArticle(Model model, String aid) {
		Article article = articleService.findArticleById(aid);
		List<Category> categorys = categoryService.findAllCategory();
		model.addAttribute("article", article);
		model.addAttribute("categorys", categorys);
		return "editArticle";
	}
	
	
}
