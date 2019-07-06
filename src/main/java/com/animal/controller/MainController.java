package com.animal.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.animal.model.User;

@Controller
public class MainController {

	@RequestMapping("main/tomain")
	public String tomain(HttpSession session) {
		User user = (User) session.getAttribute("user");
		if (user == null) {
			return "user/toLog";
		} else {
			return "page/mainPage";
		}

	}

}
