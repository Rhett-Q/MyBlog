package top.rhett.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import top.rhett.dao.ArticleMapper;
import top.rhett.pojo.Article;
import top.rhett.pojo.PageBean;
import top.rhett.service.ArticleService;

@Controller
public class BlogControl {
	
	@Autowired
	private ArticleService articleService;
	
	@RequestMapping("/home")
	public String index(Model model, @RequestParam(defaultValue="0")int start, @RequestParam(defaultValue="10")int length) {
		PageBean pageBean = new PageBean<Article>(start, length);
		articleService.queryArticlesByPage(pageBean);
		model.addAttribute("pageBean", pageBean);
		return "blogIndex";
	}
	
	@RequestMapping("/showArticle")
	public String showArticle(String aid, Model model) {
		Article article = articleService.findArticleById(aid);
		model.addAttribute("article", article);
		return "blogPost";
	}
	
}
