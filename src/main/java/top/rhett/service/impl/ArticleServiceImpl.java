package top.rhett.service.impl;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import top.rhett.dao.ArticleMapper;
import top.rhett.dao.TagMapper;
import top.rhett.pojo.Article;
import top.rhett.pojo.ArticleTag;
import top.rhett.pojo.PageBean;
import top.rhett.pojo.Tag;
import top.rhett.service.ArticleService;
@Service
public class ArticleServiceImpl implements ArticleService {
	
	@Autowired
	private ArticleMapper articleMapper;
	
	@Autowired
	private TagMapper tagMapper;

	@Override
	public void publishArticle(Article article) {
		Date date = new Date();
		/*Timestamp timestamp = new Timestamp(date.getTime());*/
		article.setPublishDate(date);
		article.setUpdateDate(date);
		articleMapper.addArticle(article);
		List<Tag> tags = article.getTags();
		
		for (Tag tag : tags) {
			Tag queryTag = tagMapper.selectTagByTagName(tag.getTagName());
			if (queryTag == null) {
				tagMapper.addTags(tag);
				tagMapper.saveArticleTag(new ArticleTag(article, tag));
			} else { 
				tagMapper.saveArticleTag(new ArticleTag(article, queryTag));
			}
			
		}
	}

	@Override
	public void queryArticlesByPage(PageBean pageBean) {
		int articleCount = articleMapper.getArticleCount();
		pageBean.setRecordsTotal(articleCount);
		pageBean.setRecordsFiltered(articleCount);
		List<Article> articlesList = articleMapper.queryArticlesByPage(pageBean);
		pageBean.setData(articlesList);
	}

	@Override
	public Article findArticleById(String articleId) {
		return articleMapper.selectArticleById(articleId);
	}

	@Override
	public void updateArticle(Article article) {
		articleMapper.updateArticle(article);
	}

	
	
	

}
