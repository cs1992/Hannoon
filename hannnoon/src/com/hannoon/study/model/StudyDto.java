package com.hannoon.study.model;

public class StudyDto {
	private int gle_code; // -- ���ڵ�
	private int board_id; // -- �Խ��ǹ�ȣ
	private int share_code;// -- �����ڵ�
	private String name; // -- �ۼ����̸�
	private String title; // -- ����
	private String content; // -- ����
	private int hit; // -- ��ȸ��
	private String date_time;// �ۼ�����
	private int sweet; // --���ƿ�
	private int id_code; // -- ���̵�pk
	
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
