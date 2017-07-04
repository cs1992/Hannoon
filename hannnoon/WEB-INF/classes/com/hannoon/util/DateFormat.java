package com.hannoon.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class DateFormat {
	
	public static String changeRSSDateFormat(String fromDate) {
//		String fromDate = "Tue, 23 Dec 2014 12:35:00 +0900";
		String fromDateFormat = "EEE, d MMM yyyy HH:mm:ss Z";
		String changeFormat = "yyyy.MM.dd HH:mm";
		String resultDate = "";
		
		SimpleDateFormat transFormat = new SimpleDateFormat(fromDateFormat ,Locale.ENGLISH);
		try {
			Date toDate = transFormat.parse(fromDate);
			transFormat = new SimpleDateFormat(changeFormat);
			resultDate = transFormat.format(toDate);
			
		} catch (ParseException e) {
			e.printStackTrace(); 
		}
		return resultDate;
	}

}
