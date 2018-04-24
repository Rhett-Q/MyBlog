package top.rhett.pojo;

import java.io.Serializable;

public class Category implements Serializable{
	
	private String cid;
	
	private String categoryName;

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	
	
	
}
