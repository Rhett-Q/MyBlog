package top.rhett.control;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import top.rhett.pojo.Article;
import top.rhett.pojo.Category;
import top.rhett.pojo.PageBean;
import top.rhett.service.ArticleService;
import top.rhett.service.CategoryService;
import top.rhett.util.ImageUploadUtil;

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
		return "redirect:/admin/showArticleList";
	}
	
	@RequestMapping("showArticleList")
	public String showArticleList() {
		return "articleList";
	}
	
	@RequestMapping("/articleList")
	@ResponseBody
	public PageBean queryArticleByPage(Model model, PageBean pageBean) {
		articleService.queryArticlesByPage(pageBean);
	/*	System.out.println(pageBean);*/
		return pageBean;
	}
	
	@RequestMapping("/editArticle")
	public String editArticle(Model model, String aid) {
		Article article = articleService.findArticleById(aid);
		List<Category> categorys = categoryService.findAllCategory();
		model.addAttribute("article", article);
		model.addAttribute("categorys", categorys);
		return "editArticle";
	}
	
	@RequestMapping("/updateArticle")
	public String updateArticle(Article article) {
		articleService.updateArticle(article);
		return "redirect:/admin/showArticleList";
	}
	
	@RequestMapping("ArticleFileUpload")
	public void uploadImage(@RequestParam("upload")MultipartFile file, HttpServletResponse response, HttpServletRequest request) throws IllegalStateException, IOException {
		ImageUploadUtil.imageUpload(file, response, request);
	}
	
}
