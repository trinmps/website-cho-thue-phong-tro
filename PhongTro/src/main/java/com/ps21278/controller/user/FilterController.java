package com.ps21278.controller.user;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps21278.dao.BaiDangDAO;
import com.ps21278.entity.BaiDang;
import com.ps21278.utils.ParamService;
import com.ps21278.utils.SessionService;

@Controller
public class FilterController {
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	BaiDangDAO bdDao;
	
	@RequestMapping("/user/phuong")
	public String locBrand(Model model, 
			@RequestParam("ph") Optional<String> ph){
		String phuong = ph.orElse(sessionService.get("ph"));
		sessionService.set("ph", phuong);
		List<BaiDang> items = bdDao.findByPhuong(phuong);
		model.addAttribute("items", items);
		model.addAttribute("views","user/trangchu");
		return "index";
	}
	
	@RequestMapping("/user/gia")
	public String searchGia(Model model, 
			@RequestParam(value =  "min", required=false) Optional<Integer> min
			,@RequestParam(value = "max", required=false) Optional<Integer> max
			){
		Integer minGia = min.orElse(Integer.MIN_VALUE);
		Integer maxGia = max.orElse(Integer.MAX_VALUE);
		sessionService.set("max", maxGia);
		sessionService.set("min", minGia);
		List<BaiDang> items = bdDao.findByGiaPhong(minGia, maxGia);
		model.addAttribute("items", items);
		model.addAttribute("views","user/trangchu");
		return "index";
	}
	
	@RequestMapping("/user/dientich")
	public String searchdt(Model model, 
			@RequestParam(value =  "min", required=false) Optional<Integer> min
			,@RequestParam(value = "max", required=false) Optional<Integer> max
			){
		Integer minDT = min.orElse(Integer.MIN_VALUE);
		Integer maxDT = max.orElse(Integer.MAX_VALUE);
		sessionService.set("max", maxDT);
		sessionService.set("min", minDT);
		List<BaiDang> items = bdDao.findByDienTich(minDT, maxDT);
		model.addAttribute("items", items);
		model.addAttribute("views","user/trangchu");
		return "index";
	}
	
	@RequestMapping("/user/timkiem")
	public String timkiem(Model model, 
			@RequestParam("phuong") Optional<String> phuong
			,@RequestParam("gia") Optional<String> gia
			,@RequestParam("dientich") Optional<String> dientich
			){
		String ph = phuong.orElse(sessionService.get("phuong"));
		String gi = gia.orElse(sessionService.get("gia"));
		String dt = dientich.orElse(sessionService.get("dientich"));
		
		String[] subgia = gi.split(" ");
		Integer minGia=Integer.valueOf(subgia[0]);
		Integer maxGia=Integer.valueOf(subgia[1]);
		
		String[] subdt = dt.split(" ");
		Integer minDienTich=Integer.valueOf(subdt[0]);
		Integer maxDienTich=Integer.valueOf(subdt[1]);

		sessionService.set("gia", gi);
		sessionService.set("phuong", ph);
		sessionService.set("dientich", dt);
		
		List<BaiDang> items = bdDao.findByTimKiem(ph, minDienTich, maxDienTich, minGia, maxGia);
		model.addAttribute("items", items);
		model.addAttribute("views","user/trangchu");
		return "index";
	}
	
	
	
//	@RequestMapping("/user/search")
//	public String searchAndPage(Model model) {
//		String s = paramService.getString("keywords", "");
//		List<Product> items=dao.findByKeywords(s);
//		model.addAttribute("items", items);	
//		model.addAttribute("views","user/thuephong");
//		return "index";	
//	}
}
