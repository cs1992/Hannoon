package com.hannoon.board.model;

public class NoticeBoardDto {
	private int notice_code;
	private int gle_code;
	private String id;
	private String title;
	private String content;
	private String date_time;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getNotice_code() {
		return notice_code;
	}

	public void setNotice_code(int notice_code) {
		this.notice_code = notice_code;
	}

	public int getGle_code() {
		return gle_code;
	}

	public void setGle_code(int gle_code) {
		this.gle_code = gle_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDate_time() {
		return date_time;
	}

	public void setDate_time(String date_time) {
		this.date_time = date_time;
	}

}
