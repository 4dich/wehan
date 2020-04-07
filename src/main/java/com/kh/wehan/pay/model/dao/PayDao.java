package com.kh.wehan.pay.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("pDao")
public class PayDao {


	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public int getListCount() {
		return sqlSession.selectOne("payMapper.getListCount");
	}

}
