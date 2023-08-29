package com.ps21278.controller.admin;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps21278.dao.AccountDAO;
import com.ps21278.dao.BaiDangDAO;
import com.ps21278.entity.Account;
import com.ps21278.entity.BaiDang;
	

@Controller
public class ProductsController {
	 @Autowired
	 BaiDangDAO dao;
	
	@RequestMapping("/admin/sanpham")
	public String paginate(Model model,	@RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 4);
		
		Page<BaiDang> page = dao.findAll(pageable);
		int currentPage =1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		model.addAttribute("shows","listsanpham");
		return "admin/canvas";	
	}
////
	@RequestMapping("/admin/editsanpham")
	public String control(Model model) {
		BaiDang item = new BaiDang();
		model.addAttribute("item", item);
		model.addAttribute("shows","editsanpham");
		return "admin/canvas";	
	}
//
	@RequestMapping("/admin/sanpham/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {
		BaiDang items = dao.findById(id).get();
		model.addAttribute("item", items);
		model.addAttribute("shows","editsanpham");
		return "admin/canvas";	
	}
//	
	@RequestMapping("/sanpham/create")
	public String create(BaiDang item , Model model) {
		item.setNgaydang(new Date());
		dao.save(item);
		model.addAttribute("message", "Đăng bài thành công");
		return "redirect:/admin/editsanpham";
	}
//	
	@RequestMapping("/sanpham/delete/{id}")
	public String create(@PathVariable("id") Integer id ,Model model) {
		dao.deleteById(id);
		
		return "redirect:/admin/sanpham";
	}

	@RequestMapping("/sanpham/update")
	public String update(BaiDang item) {
		dao.save(item);
		return "redirect:/admin/editsanpham/edit/" + item.getIdbaidang();
	}
}
