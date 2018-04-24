package top.rhett.pojo;

import java.util.ArrayList;
import java.util.List;

public class PageBean<T> {
	
	private int currentPage;
	
	private int pageSize;
	
	private int pageIndex;
	
	private int totalPage;
	
	private int totalCount;
	
	private List<T> pageData = new ArrayList<>();

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public List<T> getPageData() {
		return pageData;
	}

	public void setPageData(List<T> pageData) {
		this.pageData = pageData;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	@Override
	public String toString() {
		return "PageBean [currentPage=" + currentPage + ", pageSize=" + pageSize + ", pageIndex=" + pageIndex
				+ ", totalPage=" + totalPage + ", totalCount=" + totalCount + ", pageData=" + pageData + "]";
	}
	
	
}
