package com.ps21278.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactController {

	@RequestMapping("/user/lienhe")
	public String index(Model model) {
		model.addAttribute("views", "user/lienhe");
		return "index";
	}

}
