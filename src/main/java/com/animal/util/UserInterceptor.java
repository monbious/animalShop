package com.animal.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.animal.model.User;

public class UserInterceptor implements HandlerInterceptor {
	private static final String[] IGNORE_URI = { "/loginForm", "/login", "/404.html" };

	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {

	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {

	}

	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler) throws Exception {
		boolean flag = false;
		String servletPath = req.getServletPath();
		for (String s : IGNORE_URI) {
			if (servletPath.contains(s))
				break;
		}
		if (!flag) {
			User user = (User) req.getSession().getAttribute(HrmConstants.USER_SESSION);
			if (user == null) {
				req.setAttribute("message", "���ȵ�¼�ٷ���");
				req.getRequestDispatcher(HrmConstants.LOGIN).forward(req, resp);
				return flag;
			} else {
				flag = true;
			}
		}
		return flag;
	}

}
