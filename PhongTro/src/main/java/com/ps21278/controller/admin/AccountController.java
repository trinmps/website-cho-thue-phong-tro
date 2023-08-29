package com.ps21278.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps21278.dao.AccountDAO;
import com.ps21278.entity.Account;

@Controller
public class AccountController {
	@Autowired
	AccountDAO aDAO;
	
	@RequestMapping("/admin/edittaikhoan/{tendangnhap}")
	public String register(Model model, @PathVariable("tendangnhap") String id) {
		Account item = aDAO.findById(id).get();
		model.addAttribute("item", item);
		model.addAttribute("shows", "edittaikhoan");
		return "admin/canvas";
	}
		
	@RequestMapping("/admin/update/{tendangnhap}")
	public String create(Account item, Model model,@PathVariable("tendangnhap") String id) {
		aDAO.save(item);
		model.addAttribute("message", "Cập nhật thành công");
		return "redirect:/admin/edittaikhoan/{tendangnhap}";
	}
	
	@RequestMapping("/admin/doimatkhau")
	public String change(Model model) {
		String id="tri01";
		Account item = aDAO.findById(id).get();
		model.addAttribute("item", item);
		model.addAttribute("shows", "doimatkhau");
		return "admin/canvas";
	}
	
	
}
