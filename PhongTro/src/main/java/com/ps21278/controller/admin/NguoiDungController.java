package com.ps21278.controller.admin;

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
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps21278.dao.AccountDAO;
import com.ps21278.entity.Account;
import com.ps21278.entity.BaiDang;

@Controller

public class NguoiDungController {
    @Autowired
    AccountDAO dao;
    
    @RequestMapping("/admin/listnguoidung")
	public String paginate(Model model,	@RequestParam("p") Optional<Integer> p) {
		Pageable pageable =  PageRequest.of(p.orElse(0), 4);
		Page<Account> page = dao.findAll(pageable);
		int currentPage =1;
		int totalItems = page.getNumberOfElements();
		int totalPages = page.getTotalPages();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("page", page);
		model.addAttribute("shows","listnguoidung");
		return "admin/canvas";	
	}
    
    @RequestMapping("/admin/themnguoidung")
	public String control(Model model) {
		Account item = new Account();
		model.addAttribute("item", item);
		model.addAttribute("shows","themnguoidung");
		return "admin/canvas";	
	}
    
    @RequestMapping("/admin/create")
	public String create(@Validated Account item, Model model,BindingResult errors) {		
		if (errors.hasErrors()) {
			model.addAttribute("message", "Vui lòng sửa các lỗi sau");
		} else {
			model.addAttribute("message", "Thêm Người Dùng Thành Công");
			dao.save(item);
		}		
//		
		return "forward:/admin/themnguoidung";
	}
    
    
   
    
    @RequestMapping("/listnguoidung/delete/{tendangnhap}")
	public String create(@PathVariable("tendangnhap") String tendangnhap ,Model model) {
		
		try {
			dao.deleteById(tendangnhap);
		}catch(Exception e){
			model.addAttribute("message" , "Không thể xóa Tài khoản của mình");
			
		}
		
		return "redirect:/admin/listnguoidung";
	}
    
    @ModelAttribute("admins")
	public Map<Boolean, String>getAdmins(){
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Admin");
		map.put(false, "Customer");
		return map;
	}
    
}
