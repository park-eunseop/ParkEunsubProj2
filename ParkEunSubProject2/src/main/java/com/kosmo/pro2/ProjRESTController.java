package com.kosmo.pro2;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.kosmo.pro2.model.MemberDTO;

@RestController
public class ProjRESTController {
	
	@PostMapping(value = "/json/sign/idCheck",produces = "text/html;charset=UTF-8")
	public String login(@RequestBody MemberDTO user) {
		
		System.out.println(user);
		String msg;
		if(user.getTel_email().equals("sondms1224@naver.com"))
			msg = "사용중인 메일/전화번호입니다.";
		else if(user.getTel_email().length()==0)			
			msg= "입력하세요";
		else
			msg= "사용가능";
		
		
		return msg;
	}
	
	
	
	

}