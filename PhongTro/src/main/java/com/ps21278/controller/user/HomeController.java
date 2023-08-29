package com.ps21278.controller.user;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps21278.dao.BaiDangDAO;
import com.ps21278.entity.BaiDang;
import com.ps21278.utils.ParamService;
import com.ps21278.utils.SessionService;

@Controller
public class HomeController {

	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	BaiDangDAO dao;
	
	@RequestMapping({"", "/user/trangchu", "/user/thuephong"})
	public String index(Model model) {
		BaiDang item = new BaiDang();
		model.addAttribute("item", item);
		List<BaiDang> items = dao.findAll();
		model.addAttribute("items", items);
		model.addAttribute("views","user/trangchu");
		return "index";
	}

	
}
