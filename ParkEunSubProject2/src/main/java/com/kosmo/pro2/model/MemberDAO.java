package com.kosmo.pro2.model;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;



@Repository
public class MemberDAO implements MemberService {

	
	@Resource(name ="template")
	private SqlSessionTemplate sqlMapper;
	
	@Override
	public boolean isLogin(Map map) {
		// TODO Auto-generated method stub
		return (Integer)sqlMapper.selectOne("memberIsLogin",map)==1?true:false;
	}

	@Override
	public List<MemberDTO> selectList(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getTotalRecord(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberDTO selectOne(Map map) {
		// TODO Auto-generated method stub
		return (MemberDTO)sqlMapper.selectOne("memberSelectOne", map);
	}

	@Override
	public int insert(Map map) {
		// TODO Auto-generated method stub
		System.out.println("here! insert");
		int user = sqlMapper.insert("memberInsert",map);
		System.out.println("user: "+user);
		int auth =0;
		if(user == 1) {
			auth = sqlMapper.insert("authInsert", map);
			System.out.println("auth: "+auth);
		}
		return auth;
	}

	@Override
	public int delete(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

}
