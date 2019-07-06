
package com.animal.util;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

public class PageUtil {

	private int recordCount, pageSize, pageNo;// ������ ÿҳ��ʾ���� ҳ��
	private int pageCount = 0;// ��ҳ��
	private String pageString, css = "", url = "";

	public PageUtil(int pageSize, int pageNo, int recordCount, HttpServletRequest request) {
		this.pageNo = pageNo;
		this.recordCount = recordCount;
		if (this.recordCount < 0)
			this.recordCount = 0;
		this.pageSize = pageSize;
		this.url = request.getRequestURI() + "?";
		Enumeration pNames = request.getParameterNames();
		while (pNames.hasMoreElements()) {
			String name = (String) pNames.nextElement();
			if (name.equalsIgnoreCase("pageNo") == false) {
				if (url.charAt(url.length() - 1) == '?')
					url += name + "=" + request.getParameter(name);
				else
					url += "&" + name + "=" + request.getParameter(name);
			}
		}
		if (url.charAt(url.length() - 1) != '?') {
			url += "&";
		}
	}

	public String getPageString() {

		if (recordCount % pageSize == 0) {
			pageCount = recordCount / pageSize;
		} else {
			pageCount = recordCount / pageSize + 1;
		}

		if (pageNo < 1) {
			pageNo = 1;
		}
		if (pageNo > pageCount) {
			pageNo = pageCount;
		}

		if (pageNo > 1) {
			pageString = "<a href='" + url + "pageNo=1'><font class='" + css + "'>��ҳ</font></a>&nbsp;";
			pageString += "<a href='" + url + "pageNo=" + (pageNo - 1) + "'><font class='" + css
					+ "'>��ҳ</font></a>&nbsp;";
		} else {
			pageString = "<font class='" + css + "'>��ҳ</font>&nbsp;";
			pageString += "<font class='" + css + "'>��ҳ</font>&nbsp;";
		}

		pageString += "<font color=red>" + pageNo + "</font>&nbsp;";

		if (pageNo < pageCount) {
			pageString += "<a href='" + url + "pageNo=" + (pageNo + 1) + "' class='" + css + "'>��ҳ</a>&nbsp;";
			pageString += "<a href='" + url + "pageNo=" + pageCount + "' class='" + css + "'>βҳ</a>&nbsp;";
		} else {
			pageString += "<font class='" + css + "'>��ҳ</font>&nbsp;";
			pageString += "<font class='" + css + "'>βҳ</font>";
		}
		pageString += "&nbsp;&nbsp;ת����<select id=pageNo onchange=\"window.location.href='" + url
				+ "pageNo='+this.value\">";
		;
		for (int i = 1; i <= this.pageCount; i++) {
			if (pageNo == i) {
				pageString += "<option value=" + i + " selected>" + i + "</option>";
			} else {
				pageString += "<option value=" + i + ">" + i + "</option>";
			}
		}
		pageString += "</select>ҳ";

		return "<div align=center class=" + css + ">��" + pageCount + "ҳ," + recordCount + "����¼&nbsp;&nbsp;"
				+ pageString + "</div>";
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public void setCss(String css) {
		this.css = css;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public static void main(String[] args) {
		System.out.println("abc".charAt("abc".length() - 1));
	}
}
