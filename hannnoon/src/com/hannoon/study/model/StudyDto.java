package com.hannoon.study.model;

public class StudyDto {
	private int gle_code; // -- 글코드
	private int board_id; // -- 게시판번호
	private int share_code;// -- 공유코드
	private String name; // -- 작성자이름
	private String title; // -- 제목
	private String content; // -- 내용
	private int hit; // -- 조회수
	private String date_time;// 작성일자
	private int sweet; // --좋아요
	private int id_code; // -- 아이디pk
	
	public int getGle_code() {
		return gle_code;
	}
	public void setGle_code(int gle_code) {
		this.gle_code = gle_code;
	}
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public int getShare_code() {
		return share_code;
	}
	public void setShare_code(int share_code) {
		this.share_code = share_code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
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
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getDate_time() {
		return date_time;
	}
	public void setDate_time(String date_time) {
		this.date_time = date_time;
	}
	public int getSweet() {
		return sweet;
	}
	public void setSweet(int sweet) {
		this.sweet = sweet;
	}
	public int getId_code() {
		return id_code;
	}
	public void setId_code(int id_code) {
		this.id_code = id_code;
	}

}
