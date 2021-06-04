package org.coldrain.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/voca/*")
@Log4j
public class VocaController {

	
	@GetMapping("/learn")
	public String learn() {
		log.info("VocaController.learn()");
		
		return "voca/learn";
	}
}
