package top.rhett.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import top.rhett.pojo.Article;
import top.rhett.pojo.PageBean;
import top.rhett.service.ArticleService;

@Controller
public class ArticleControl {
	
	@Autowired
	private ArticleService articleService; 
	
	@RequestMapping("/admin/publishArticle")
	public String publishArticle(Article article) {
		articleService.publishArticle(article);
		return "index";
	}
	
	@RequestMapping("/admin/articleList")
	public String queryArticleByPage(Model model, PageBean pageBean) {
		
		articleService.queryArticlesByPage(pageBean);
		System.out.println(pageBean);
		
		return "articleList";
	}
	
}
