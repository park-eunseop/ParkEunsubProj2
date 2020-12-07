package com.kosmo.pro2.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class MemberDTO {
	
	private String id;
	private String password;
	private String name;
	private String nickname;
	private String birthday;
	private String gender;
	private String attach_file;
	private String addr;
	private String self_intro;
	

}
