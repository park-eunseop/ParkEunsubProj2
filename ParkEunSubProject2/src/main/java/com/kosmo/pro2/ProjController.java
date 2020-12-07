package com.kosmo.pro2;


import java.io.File;
import java.io.IOException;
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
import org.springframework.web.multipart.MultipartFile;

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
	public String signUp() {
		
		return "member/Sign.tiles";
	}
	//회원가입
	@RequestMapping("/Member/UserSignUp.do")
	public String userSignUp(@RequestParam Map map,@RequestParam MultipartFile upload,HttpServletRequest req) throws IllegalStateException, IOException {
		System.out.println("here");
		//1]서버의 물리적 경로 얻기		
		String physicalPath=req.getServletContext().getRealPath("/upload");
//		//2]File객체 생성	
		File file = new File(physicalPath+File.separator+upload.getOriginalFilename());
//		//3]업로드 처리		
		upload.transferTo(file);
		map.put("attach_file", upload.getOriginalFilename());
		System.out.println(map.get("id"));
		System.out.println(map.get("password"));
		System.out.println(map.get("name"));
		System.out.println(map.get("nickname"));
		System.out.println(map.get("birthday"));
		System.out.println(map.get("gender"));
		System.out.println(map.get("attach_file"));
		System.out.println(map.get("addr"));
		System.out.println(map.get("self_intro"));
		
		System.out.println(service.insert(map));
		
		
		
		
		return "member/Login.tiles";
	}

}
