package com.hannoon.study.model;

public class StudyRoomDto {
	private int part_code;// -- �а��ڵ�
	private String id; // -- ���̵�
	private int study_code;// -- ���ι��ڵ�
	private String study_name;// -- ���ι��̸�
	private int sweet; // -- ���ƿ�
	private int share_id;// -- ����id

	public int getPart_code() {
		return part_code;
	}

	public void setPart_code(int part_code) {
		this.part_code = part_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getStudy_code() {
		return study_code;
	}

	public void setStudy_code(int study_code) {
		this.study_code = study_code;
	}

	public String getStudy_name() {
		return study_name;
	}

	public void setStudy_name(String study_name) {
		this.study_name = study_name;
	}

	public int getSweet() {
		return sweet;
	}

	public void setSweet(int sweet) {
		this.sweet = sweet;
	}

	public int getShare_id() {
		return share_id;
	}

	public void setShare_id(int share_id) {
		this.share_id = share_id;
	}
}
