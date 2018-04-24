package top.rhett.dao;

import top.rhett.pojo.ArticleTag;
import top.rhett.pojo.Tag;

public interface TagMapper {
	
	Tag selectTagByTagName(String tagName);
	
	void addTags(Tag tag);
	
	void saveArticleTag(ArticleTag articleTag);
	
}
