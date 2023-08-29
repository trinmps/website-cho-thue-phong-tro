package com.ps21278.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps21278.dao.BaiDangDAO;
import com.ps21278.dao.DanhGiaDAO;
import com.ps21278.entity.BaiDang;
import com.ps21278.entity.DanhGia;

@Controller
public class DetailController {
	@Autowired
	BaiDangDAO daobd;
	@Autowired
	DanhGiaDAO daodg;

	@RequestMapping("/phongtro/chitiet/{id}")
	public String phongtro(Model model, @PathVariable("id") Integer id) {
		BaiDang pr = daobd.findById(id).get();
		DanhGia cmt = new DanhGia();
		List<DanhGia> listcmt = daodg.findByIdPhong(id);
		model.addAttribute("item", pr);
		model.addAttribute("cmt", cmt);
		model.addAttribute("listcmt", listcmt);
		model.addAttribute("views", "user/chitiet");
		return "index";
	}

	@RequestMapping("/phongtro/danhgia/{id}")
	public String create(DanhGia cmt, Model model, @PathVariable("id") Integer id) {
		daodg.save(cmt);
		model.addAttribute("views", "user/chitiet");
		return "redirect:/phongtro/chitiet/{id}";
	}

}
