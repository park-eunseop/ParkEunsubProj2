package com.kosmo.pro2;


import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kosmo.pro2.model.MemberDTO;
import com.kosmo.pro2.model.MemberService;

//@SessionAttributes({"USER_ID","USER_NAME"})
@Controller
public class ProjController {
	
	@Resource(name="memberService")
	private MemberService service;
	
	
	@RequestMapping("/Member/Auth/Login.do")
	public String login() {
		
		return "member/Login.tiles";
	}
	/*
	@RequestMapping("/Logout.do")
	public String logout(SessionStatus status) {

		status.setComplete();
		return "member/Login.tiles";
	}/////////////logout
	*/
	
	/*
	@RequestMapping(value="/member/login.do", produces="text/html;charset=UTF-8")
	public String memberlogin(@RequestParam Map map,Model model,HttpServletRequest req) {
		
		boolean flag = service.isLogin(map);
		String id = (String)map.get("tel_email");
		System.out.println(flag);
		if(flag) {
			//req.getSession().setAttribute("USER_ID", id);
			model.addAttribute("USER_ID",id);
			MemberDTO dto =service.selectOne(map);
			String name= dto.getName();
			model.addAttribute("USER_NAME",name);
		}
		else {			
			model.addAttribute("NotMember", "아이디와 비밀번호가 일치하지 않아요");
		}		
		
		//return "forward:/Login.do";	
		return "member/Login.tiles";
	}
	*/
	//로그인 여부 판단]
	@RequestMapping(value="/Member/Auth/IsLogin.do",produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String isLogin(Authentication auth) {
		//인증이 안되었다면 auth는 null
		JSONObject json = new JSONObject();
		if(auth == null) {
			json.put("isLogin", "NO");
			return json.toJSONString();
		}
		json.put("isLogin", "YES");
		return json.toJSONString();
	}/////////////////////
	
	
	//회원가입
	@RequestMapping("/Member/SignUp.do")
	public String SignUp() {
		
		return "member/Sign.tiles";
	}

}
