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

	public ArrayList<Pay> pSearch(Pay p,PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("payMapper.searchplist",p,rowBounds);
	}
	
	public ArrayList<Challenge> chSearch(Challenge ch,PageInfo pi){
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("payMapper.searchchlist",ch,rowBounds);
	}

	public int searchCount(Challenge ch) {
		return sqlSession.selectOne("payMapper.chSearchResultCount",ch);
	}

	public int searchCount(Pay p) {
		return sqlSession.selectOne("payMapper.paySearchResultCount",p);
	}

	public int refundAll(int[] result) {
		return sqlSession.update("payMapper.refundAll",result);
	}

	public int refundOen(int pId) {
		return sqlSession.update("payMapper.refundOne",pId);
	}

	public ArrayList<Pay> refundYn(PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("payMapper.ynlist",null,rowBounds);
	}

	public int updatepeoplePlus(Challenge ch) {
		return sqlSession.update("payMapper.updatepeoplePlus",ch);
	}

	public int updateCountPlus(Challenge ch) {
		return sqlSession.update("payMapper.updateCountPlus",ch);
	}

	public ArrayList<Pay> refundNy(PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("payMapper.nylist",null,rowBounds);
	}


	public ArrayList<Challenge> chSearchY(Challenge ch, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("payMapper.chSearchY",ch,rowBounds);
	}

	public ArrayList<Challenge> chSearchN(Challenge ch, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("payMapper.chSearchN",ch,rowBounds);
	}

	public ArrayList<Pay> pSearchY(Pay p, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("payMapper.pSearchY",p,rowBounds);
	}
	
	public ArrayList<Pay> pSearchN(Pay p, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("payMapper.pSearchN",p,rowBounds);
	}

	public int deleteChPay(int chId) {
		return sqlSession.delete("payMapper.deleteChPay",chId);
	}

	public int deleteChllenge(int chId) {
		return sqlSession.delete("payMapper.deleteChllenge",chId);
	}
}
