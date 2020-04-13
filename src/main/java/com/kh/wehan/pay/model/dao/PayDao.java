package com.kh.wehan.pay.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.challenge.model.vo.Challenge;
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


	public int insertPay(Pay pay) {
		return sqlSession.insert("payMapper.insertPay",pay);
	}


	public Challenge slectChDetail(int pId) {
		return sqlSession.selectOne("payMapper.slectChDetail",pId);
	}


	public ArrayList<Pay> pSearch(Pay p) {
		return (ArrayList)sqlSession.selectList("payMapper.searchplist",p);
	}
	
	public ArrayList<Challenge> chSearch(Challenge ch){
		return (ArrayList)sqlSession.selectList("payMapper.searchchlist",ch);
	}


	public int searchCount(Challenge ch) {
		return sqlSession.selectOne("payMapper.chSearchResultCount",ch);
	}

	public int searchCount(Pay p) {
		return sqlSession.selectOne("payMapper.paySearchResultCount",p);
	}
}
