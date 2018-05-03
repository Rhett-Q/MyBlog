package top.rhett.pojo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Article implements Serializable{
	
	private String aid;
	
	private String title;
	
	private Category category;
	
	private List<Tag> tags = new ArrayList<>();
	
	private String content;
	
	private String isDraft;
	
	private int hits;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm")
	private Date publishDate;
	
	@JsonFormat(pattern="yyyy-MM-dd HH:mm")
	private Date updateDate;
	
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
	
	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
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
		/*SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyƒÍMM‘¬dd»’ HH:mm:ss");
		String formatTime = dateFormat.format(publishDate);*/
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
