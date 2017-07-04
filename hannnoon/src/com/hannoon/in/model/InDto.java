package com.hannoon.in.model;


public class InDto extends BoardDto {

	private int in_code;
	private int gle_code;
	private int in_type_code;
	private String is_choose;
	private String control;

	public String getControl() {
		return control;
	}

	public void setControl(String control) {
		this.control = control;
	}

	public void setIs_choose(String is_choose) {
		this.is_choose = is_choose;
	}

	public String getIs_choose() {
		return is_choose;
	}

	private String email;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getIn_code() {
		return in_code;
	}

	public void setIn_code(int in_code) {
		this.in_code = in_code;
	}

	public int getGle_code() {
		return gle_code;
	}

	public void setGle_code(int gle_code) {
		this.gle_code = gle_code;
	}

	public int getIn_type_code() {
		return in_type_code;
	}

	public void setIn_type_code(int in_type_code) {
		this.in_type_code = in_type_code;
	}

}
