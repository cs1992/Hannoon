package com.hannoon.study.model;

public class StudyGleDto {
	private int gle_code; // -- ���ڵ�
	private String id; // -- �ۼ��ھ��̵�
	private int board_id; // -- �Խ��ǹ�ȣ
	private int share_code;// -- �����ڵ�
	private String name; // -- �ۼ����̸�
	private String title; // -- ����
	private String content;// -- ����
	private int hit;// -- ��ȸ��
	private String date_time;// --�ۼ�����
	private int sweet; // -- ���ƿ�

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
