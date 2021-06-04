package org.coldrain.controller;

import java.util.List;

import javax.inject.Inject;

import org.coldrain.domain.WordVO;
import org.coldrain.mapper.WordMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/voca/admin/*")
@Log4j
public class VocaAdminController {
	
	@Inject
	private WordMapper wordMapper;

	@GetMapping("/voca-list")
	public String vocaList(Model model) {
		log.info("VocaAdminController.vocaList()");
		
		List<WordVO> words = wordMapper.getList();
		model.addAttribute("words", words);
		
		return "voca/admin/voca_list";
	}
	
	@GetMapping("/category-list")
	public String categoryList() {
		log.info("VocaAdminController.categoryList()");
		
		return "voca/admin/category_list";
	}
	
	
}
