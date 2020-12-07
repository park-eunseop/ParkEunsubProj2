package com.kosmo.pro2;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.kosmo.pro2.model.MemberDTO;

@RestController
public class ProjRESTController {
	
	@PostMapping(value = "/json/sign/idCheck",produces = "text/html;charset=UTF-8")
	public String idcheck(@RequestBody MemberDTO user) {
		
		System.out.println(user);
		String msg;
		if(user.getId().equals("sondms1224@naver.com"))
			msg = "사용중인 메일/전화번호입니다.";
		else if(user.getId().length()==0)			
			msg= "입력하세요";
		else
			msg= "사용가능";
		
		
		return msg;
	}
	
	
	
	
	

}