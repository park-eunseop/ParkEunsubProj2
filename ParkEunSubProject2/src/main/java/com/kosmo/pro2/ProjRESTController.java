package com.kosmo.pro2;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.kosmo.pro2.model.MemberDTO;

@RestController
public class ProjRESTController {
	
	@PostMapping("/json/login")
	public ModelAndView login(@RequestBody MemberDTO user) {
		
		System.out.println(user);
		ModelAndView mav = new ModelAndView("index.tiles");		
		return mav;
	}
	
	
	
	

}