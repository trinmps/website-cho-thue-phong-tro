package com.ps21278.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps21278.entity.Account;
import com.ps21278.dao.AccountDAO;
import com.ps21278.utils.CookieService;
import com.ps21278.utils.ParamService;
import com.ps21278.utils.SessionService;

@Controller
public class LoginController {
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	AccountDAO accDAO;

	@RequestMapping("/user/login")
	public String index(Model model) {
		model.addAttribute("views", "user/login");
		return "index";
	}

	@PostMapping("/user/login")
	public String loginPost(Model model) {
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		boolean remember = paramService.getBoolean("remember", false);
		try {
			Account user = accDAO.findById(username).get();
			if (!user.getMatkhau().equals(password)) {
				model.addAttribute("message", "Sai mật khẩu");
			} else {
				sessionService.set("user", user);
				if (remember) {
					cookieService.add("username", user.getTendangnhap(), 10);
					cookieService.add("username", user.getMatkhau(), 10);
				} else {
					cookieService.remove("username");
					cookieService.remove("password");
				}
				model.addAttribute("message", "Đăng nhập thành công");
				return "redirect:/user/trangchu";
				
			}
		} catch (Exception e) {
			model.addAttribute("message", "Tài khoản không đúng!"); 
		}
		model.addAttribute("views", "user/login");
		return "index";
	}
	
	@RequestMapping("/user/logout")
	public String logout(Model model) {
		sessionService.remove("user");
		model.addAttribute("views", "user/login");
		return "index";
	}
	

}
