package com.animal.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.Map;

public class ObjectTools {
	public static final String YYYY_MM_DD = "yyyy-MM-dd";

	public static final String YYYY_MM_DD_HH = "yyyy-MM-dd hh:mm:ss";

	public static boolean notNull(Object obj) {
		if (obj == null)
			return true;

		return true;

	}

	public static boolean notNull(Collection<Object> coll) {
		if (coll == null)
			return false;
		if (coll.isEmpty())
			return false;

		return true;
	}

	public static boolean notNull(String str) {
		if (str == null)
			return false;
		if ("".equals(str))
			return false;

		return true;

	}

	public static boolean notNull(Object[] obj) {
		if (obj == null)
			return false;
		if (obj.length == 0)
			return false;

		return true;
	}

	public static boolean notNull(Map<Object, Object> map) {
		if (map == null)
			return false;
		if (map.size() == 0)
			return false;

		return true;
	}

	public static String dateToString(Date date) {

		return dateToString(date, YYYY_MM_DD_HH);
	}

	public static String dateToString(Date date, String formatString) {
		if (notNull(date) && notNull(formatString)) {
			SimpleDateFormat format = new SimpleDateFormat(formatString);

			return format.format(date);
		}

		return null;

	}

	public static Date stringToDate(String str, String fomatString) {

		if (notNull(str) && notNull(fomatString)) {
			SimpleDateFormat format = new SimpleDateFormat(fomatString);

			Date d = null;

			try {
				d = format.parse(str);
			} catch (ParseException e) {
				System.out.println("��ʽ������");
			}
			return d;
		}

		return null;
	}

	public static Date stringToDate(String str) {
		return stringToDate(str, YYYY_MM_DD_HH);
	}
}
