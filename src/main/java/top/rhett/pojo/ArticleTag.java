package top.rhett.pojo;

public class ArticleTag {
	
	private String id;
	
	private Article article;
	
	private Tag tag;

	public ArticleTag(Article article, Tag tag) {
		this.article = article;
		this.tag = tag;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public Tag getTag() {
		return tag;
	}

	public void setTag(Tag tag) {
		this.tag = tag;
	}
	
}
