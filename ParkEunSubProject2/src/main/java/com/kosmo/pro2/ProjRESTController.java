package com.kosmo.pro2;

import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.kosmo.pro2.model.MemberDTO;

@RestController
public class ProjRESTController {
	
	
	
	@PostMapping(value = "/json/sign/idCheck",produces = "text/html;charset=UTF-8")
	public String idcheck(@RequestBody MemberDTO user) {
		
		JSONObject obj = new JSONObject();
		System.out.println(user);
		String msg;
		if(user.getId().equals("sondms1224")) {
			obj.put("flag", "0");
			obj.put("msg", "사용중인 아이디입니다.");
		}
		else {
			obj.put("flag", "1");
			obj.put("msg", "멋진 아이디네요!");
		}		
		return obj.toJSONString();
	}
	
	
	
	
	

}