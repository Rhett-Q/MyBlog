package top.rhett.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Article implements Serializable{
	
	private String aid;
	
	private String title;
	
	private Category category;
	
	private List<Tag> tags = new ArrayList<>();
	
	private String content;
	
	private String isDraft;
	
	private int hits;
	
	private Date publishDate;
	
	
	/*public String getCategoryId() {
		return this.category.getCid();
	}
	
	public void setCategoryId(String cid) {
		this.category.setCid(cid);
	}*/

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<Tag> getTags() {
		return tags;
	}

	public void setTags(String tags) {
		String[] tagsList = tags.split(",");
		for (String tag : tagsList) {
			this.tags.add(new Tag(tag));
		}
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	
	
	
	public String getIsDraft() {
		return isDraft;
	}

	public void setIsDraft(String isDraft) {
		this.isDraft = isDraft;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public Date getPublishDate() {
		return publishDate;
	}

	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}

	public void setTags(List<Tag> tags) {
		this.tags = tags;
	}

	@Override
	public String toString() {
		return "Article [aid=" + aid + ", title=" + title + ", category=" + category + ", tags=" + tags + ", content="
				+ content + "]";
	}
	
	
	
}
