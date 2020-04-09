package com.kh.wehan.certify.model.vo;

public class SearchCondition {

	private String title;
	private String writer;
	public SearchCondition() {
		super();
	}
	public SearchCondition(String title, String writer) {
		super();
		this.title = title;
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	@Override
	public String toString() {
		return "SearchCondition [title=" + title + ", writer=" + writer + "]";
	}
	
	
}
