package com.hannoon.util;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class Encoding {
	
	public static String nullToBlank(String tmp) {
		return tmp == null ? "" : tmp;
	} //널포인터익셉션 없애려고 하는거
	
	public static String isoToEuc(String tmp) {
		String euc = "";
		try {
			if(tmp != null)
				euc = new String(tmp.getBytes("ISO-8859-1"), "EUC-KR");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return euc;
	}
	
	public static String urlFormat(String tmp) {
		String url = "";
		try {
			if(tmp != null)	
				url = URLEncoder.encode(tmp, "EUC-KR");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return url;
	}
	
}
