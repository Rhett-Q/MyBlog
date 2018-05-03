package top.rhett.pojo;

import java.util.ArrayList;
import java.util.List;

public class PageBean<T> {
	
	private int draw;
	
	private int start;
	
	private int length;
	
	private int recordsTotal;
	
	private int recordsFiltered;
	
	private List<T> data = new ArrayList<>();

	public PageBean() {
	}
	
	public PageBean(int start, int length) {
		this.start = start;
		this.length = length;
	}

	public int getDraw() {
		return draw;
	}

	public void setDraw(int draw) {
		this.draw = draw;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public int getRecordsTotal() {
		return recordsTotal;
	}

	public void setRecordsTotal(int recordsTotal) {
		this.recordsTotal = recordsTotal;
	}

	public int getRecordsFiltered() {
		return recordsFiltered;
	}

	public void setRecordsFiltered(int recordsFiltered) {
		this.recordsFiltered = recordsFiltered;
	}

	public List<T> getData() {
		return data;
	}

	public void setData(List<T> data) {
		this.data = data;
	}

	
	
}
