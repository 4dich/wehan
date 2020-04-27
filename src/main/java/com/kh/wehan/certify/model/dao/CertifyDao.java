package com.kh.wehan.certify.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.certify.model.vo.CertifyReply;
import com.kh.wehan.certify.model.vo.SearchCondition;
import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.member.model.vo.Follow;
import com.kh.wehan.member.model.vo.Member;

@Repository("ceDao")
public class CertifyDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * 피드 인증글 총 개수
	 * @return
	 */
	public int getListCount() {
		return sqlSession.selectOne("certifyMapper.getFidListCount");
	}

	/**
	 * 피드 리스트 출력
	 * @param pi
	 * @return
	 */
	public ArrayList<Certify> selectList(PageInfo pi) {

		int offset =(pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("certifyMapper.fidSelectList",null,rowBounds);
	}

	public ArrayList<Certify> selectFriendList(PageInfo pi,String mName) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("certifyMapper.friendFidSelectList",mName,rowBounds);
	}

	public ArrayList<Member> selectFollowList(PageInfo pi, String mName) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("certifyMapper.followList",mName,rowBounds);
	
	}

	public Certify selectCertify(int ceId) {
		
		return sqlSession.selectOne("certifyMapper.selectDetailCertify",ceId);
	}

	

	public ArrayList<Follow> deleteFollow(PageInfo pi, Follow f) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("certifyMapper.deleteFollow",f,rowBounds);
	
	} 
	

	public int insertReply(CertifyReply r) {
		
		return sqlSession.insert("certifyMapper.insertReply",r);
	}

	public int fidCategoryCount(String category) {
		return sqlSession.selectOne("certifyMapper.fidCategoryCount",category);
	}

	/**
	 * 카테고리 출력
	 * @param category
	 * @param pi
	 * @return
	 */
	public ArrayList<Certify> fidCategory(String category, PageInfo pi) {

		int offset =(pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("certifyMapper.fidCategory",category,rowBounds);
	}

	/**
	 * 유저 검색
	 * @param pi
	 * @param sc
	 * @return
	 */
	public ArrayList<Member> followSearch(PageInfo pi, SearchCondition sc) {
		
		int offset =(pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("certifyMapper.searchUser",sc,rowBounds);
	}

	/**
	 * 댓글 삭제
	 * @param r
	 * @return
	 */
	public int deleteReply(CertifyReply r) {
		return sqlSession.update("certifyMapper.deleteReply",r);
	}
	

	public int fidTitleCount(String title) {
		return sqlSession.selectOne("certifyMapper.fidTitleCount",title);
	}

	public ArrayList<Certify> fidTitle(String title, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("certifyMapper.fidTitle",title,rowBounds);
	}

	public ArrayList<Certify> chCertifyList(String chId, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("certifyMapper.chCertifyList",chId,rowBounds);
	}
	public Challenge chNameGet(String chId) {
		return sqlSession.selectOne("challengeMapper.chNameGet",chId);
	}

	public Challenge insertPage(String chId) {
		return sqlSession.selectOne("challengeMapper.insertPage",chId);
	}

	public int insertCertify(Certify cer) {
		return sqlSession.insert("certifyMapper.insertCertify",cer);
	}


	
}
