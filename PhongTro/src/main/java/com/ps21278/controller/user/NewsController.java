package com.ps21278.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps21278.utils.VisitorCounter;

@Controller
public class NewsController {
	@Autowired
    private VisitorCounter visitorCounter;

@RequestMapping("/user/tintuc")
public String post(Model model) {
	int visitorCount = visitorCounter.getVisitorCount();
    model.addAttribute("visitorCount", visitorCount);
    visitorCounter.incrementVisitorCount();
	model.addAttribute("views","user/tintuc");
	return "index";
}
}
