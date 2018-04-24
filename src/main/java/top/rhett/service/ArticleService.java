package top.rhett.service;

import top.rhett.pojo.Article;
import top.rhett.pojo.PageBean;

public interface ArticleService {
	
	void publishArticle(Article article);
	
	void queryArticlesByPage(PageBean pageBean);
}
