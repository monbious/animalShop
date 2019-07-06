package com.animal.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.animal.model.Category;
import com.animal.model.Product;
import com.animal.service.ICategoryService;
import com.animal.service.IProductService;
import com.animal.util.FileUploadUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class ProductController {

	@Resource
	private IProductService productService;

	@Autowired
	private ICategoryService categoryService;

	// 商家查询
	@RequestMapping("pro/search")
	public String searchAll(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		PageHelper.startPage(pn, 5);
		List<Product> proList = productService.search();
		PageInfo<Product> info = new PageInfo<Product>(proList, 5);
		model.addAttribute("info", info);
		return "products/productsList";
	}

	// 查询单条数据
	@RequestMapping("pro/{id}/selectById")
	public String selectById(@PathVariable("id") Integer id, Map<String, Object> map) {
		Product proList = productService.selectById(id);
		map.put("product", proList);
		return "views/product";
	}

	@RequestMapping(value = "/pro/selectAll", method = RequestMethod.POST)
	public String selectAllByLike(@RequestParam("q") String query, Map<String, Object> map) {
		List<Product> proList = productService.selectAllByLike(query.trim());
		map.put("shopList", proList);
		List<Category> cateList = categoryService.search();
		map.put("cateList", cateList);
		return "views/index";
	}

	// 查询通过Cid
	@RequestMapping("pro/{cid}/selectByCid")
	public String selectByCid(@PathVariable("cid") Integer cid, Map<String, Object> map) {
		List<Category> cateList = categoryService.search();
		map.put("cateList", cateList);
		List<Product> proList = productService.selectByCid(cid);
		map.put("shopList", proList);
		map.put("cid", cid);
		return "views/index";
	}

	// 到添加页面
	@RequestMapping("pro/toAdd")
	public String toAdd() {
		return "products/addProducts";
	}

	// 添加操作
	@RequestMapping("pro/add") // required
	public String add(Product products, HttpSession session,
			@RequestParam(value = "pic", required = false) MultipartFile pic) {
//		products.setImg(FileUploadUtil.uploadFile(pic, session, "image"));
		productService.add(products);
		return "redirect:/pro/search";
	}

	// 更新操作
	@RequestMapping("pro/{id}/toUpdate")
	public String toUpdate(Model model, @PathVariable Integer id) {
		Product proList = productService.selectById(id);
		model.addAttribute("proList", proList);
		return "products/updateProducts";
	}

	@RequestMapping("pro/update")
	public String update(Product products, HttpSession session, @RequestParam(required = false) MultipartFile pic) {
		if (pic != null && !pic.isEmpty()) {
			products.setImg(FileUploadUtil.uploadFile(pic, session, "image"));
		} else {
			products.setImg(products.getImg());
		}
		productService.update(products);
		return "redirect:/pro/search";
	}

	// 删除操作
	@RequestMapping("pro/{id}/deletePro")
	public String delete(@PathVariable Integer id) {
		productService.delete(id);
		return "redirect:/pro/search";
	}

	// 批量删除操作
	@RequestMapping("pro/deleteManyPro")
	public String deleteMany(int[] idMany) {
		productService.deleteMany(idMany);
		return "redirect:/pro/search";
	}
}
