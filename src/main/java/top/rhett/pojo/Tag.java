package top.rhett.pojo;

import java.io.Serializable;

public class Tag implements Serializable{

	private String tid;
	
	private String tagName;
	
	public Tag() {
		
	}
	
	public Tag(String tagName) {
		this.tagName = tagName;
	}

	public String getTid() {
		return tid;
	}

	public void setTid(String tid) {
		this.tid = tid;
	}

	public String getTagName() {
		return tagName;
	}

	public void setTagName(String tagName) {
		this.tagName = tagName;
	}
	
	
}
