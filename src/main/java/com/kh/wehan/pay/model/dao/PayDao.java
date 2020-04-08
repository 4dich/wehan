package com.kh.wehan.pay.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.pay.model.vo.Pay;

@Repository("pDao")
public class PayDao {


	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public int getListCount() {
		return sqlSession.selectOne("payMapper.getListCount");
	}


	public ArrayList<Pay> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("payMapper.selectList",null,rowBounds);
	}


	public Pay slectPayDetail(int pId) {
		return sqlSession.selectOne("payMapper.slectPayDetail",pId);
	}

}
