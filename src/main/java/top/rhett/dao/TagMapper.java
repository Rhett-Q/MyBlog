package top.rhett.dao;

import java.util.List;

import top.rhett.pojo.ArticleTag;
import top.rhett.pojo.Tag;

public interface TagMapper {
	
	Tag selectTagByTagName(String tagName);
	
	void addTags(Tag tag);
	
	void saveArticleTag(ArticleTag articleTag);
	
	List<Tag> getTagsByAarticleId(int articleId);
	
}
