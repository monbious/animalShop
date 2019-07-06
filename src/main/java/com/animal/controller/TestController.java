package com.animal.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.animal.model.Category;
import com.animal.model.Product;
import com.animal.service.ICategoryService;
import com.animal.service.IProductService;

@Controller
public class TestController {

	@Autowired
	private ICategoryService categoryService;

	@Autowired
	private IProductService productService;

	@RequestMapping(value = "/")
	public String test(Map<String, Object> map) {
		List<Category> cateList = categoryService.search();
		map.put("cateList", cateList);
		List<Product> proList = productService.search();
		map.put("shopList", proList);
		return "page/mainPage";
	}

}
