package com.hannoon.study.model;

public class StudyGleDto {
	private int gle_code; // -- 글코드
	private String id; // -- 작성자아이디
	private int board_id; // -- 게시판번호
	private int share_code;// -- 공유코드
	private String name; // -- 작성자이름
	private String title; // -- 제목
	private String content;// -- 내용
	private int hit;// -- 조회수
	private String date_time;// --작성일자
	private int sweet; // -- 좋아요

	public int getGle_code() {
		return gle_code;
	}

	public String getId() {
		return id;
	}

	public int getBoard_id() {
		return board_id;
	}

	public int getShare_code() {
		return share_code;
	}

	public String getName() {
		return name;
	}

	public String getTitle() {
		return title;
	}

	public String getContent() {
		return content;
	}

	public int getHit() {
		return hit;
	}

	public String getDate_time() {
		return date_time;
	}

	public int getSweet() {
		return sweet;
	}
}
