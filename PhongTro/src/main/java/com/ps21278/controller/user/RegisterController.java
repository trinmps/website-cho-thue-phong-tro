package com.ps21278.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps21278.dao.AccountDAO;
import com.ps21278.entity.Account;

@Controller
public class RegisterController {
	@Autowired
	AccountDAO aDAO;

	@RequestMapping("/user/register")
	public String register(Model model) {
		Account item = new Account();
		model.addAttribute("item", item);
		model.addAttribute("views", "user/register");
		return "index";
	}

	@PostMapping("/user/create")
	public String create( Model model, @Validated @ModelAttribute("item") Account item,Errors errors) {		
		if (errors.hasErrors()) {
			model.addAttribute("message", "Vui lòng sửa các lỗi sau");
			model.addAttribute("views", "user/register");
			return "index";
		} else {
			model.addAttribute("message", "Đăng ký thành công");
			aDAO.save(item);
		}		
		return "forward:/user/register";
	}
	

}
