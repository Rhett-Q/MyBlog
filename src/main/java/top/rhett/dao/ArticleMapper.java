package top.rhett.dao;

import java.util.List;

import top.rhett.pojo.Article;
import top.rhett.pojo.PageBean;

public interface ArticleMapper {
	
	void addArticle(Article article);
	
	int getArticleCount();
	
	List<Article> queryArticlesByPage(PageBean pageBean);
	
	Article selectArticleById(String articleId);
}
