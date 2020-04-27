package com.kh.wehan.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.member.model.vo.Diary;
import com.kh.wehan.member.model.vo.Follow;
import com.kh.wehan.member.model.vo.Member;
import com.kh.wehan.member.model.vo.Mypage;

@Repository("myDao")
public class MypageDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Mypage my_profileView(String userId) {
		return sqlSession.selectOne("mypageMapper.my_profileView", userId);
	}

	public int followCount(String userId) {
		return sqlSession.selectOne("mypageMapper.followCount", userId);
	}

	public int followingCount(String userId) {
		return sqlSession.selectOne("mypageMapper.followingCount", userId);
	}

	public int updateProfile(Mypage mp) {
		return sqlSession.update("mypageMapper.updateProfile",mp);
	}

	public ArrayList<Challenge> selectListCh(String userId) {
		return (ArrayList)sqlSession.selectList("mypageMapper.selectListCh",userId);
	}

	public int certifyCount(Certify ce) {
		/* return sqlSession.selectOne("mypageMapper.certifyCount",chId); */
		return sqlSession.selectOne("mypageMapper.certifyCount",ce);

	}

	public Member selectMember(String otherId) {
		return sqlSession.selectOne("mypageMapper.selectMember",otherId);
	}

	public int my_unfollow(Follow f) {
		return sqlSession.delete("mypageMapper.my_unfollow",f);
	}

	public int isFollow(Follow f) {
		return sqlSession.selectOne("mypageMapper.isFollow",f);
	}

	public int my_follow(Follow f) {
		return sqlSession.insert("mypageMapper.my_follow",f);
	}

	public int my_updateLvEx(Mypage mypage) {
		return sqlSession.update("mypageMapper.my_updateLvEx",mypage);
	}

	public ArrayList<Diary> selectListDiary(String userId) {
		return (ArrayList)sqlSession.selectList("mypageMapper.selectListDiary",userId);
	}

	public int insertDiary(Diary di) {
		return sqlSession.insert("mypageMapper.insertDiary",di);
	}

	public int deleteDiary(Diary di) {
		return sqlSession.delete("mypageMapper.deleteDiary",di);
	}

	public int updateDiary(Diary di) {
		return sqlSession.update("mypageMapper.updateDiary",di);
	}

	public int updateDiaryDrag(Diary di) {
		return sqlSession.update("mypageMapper.updateDiaryDrag",di);
	}

	public ArrayList<Member> selectListFollowing(String userId) {
		return (ArrayList)sqlSession.selectList("mypageMapper.selectListFollowing",userId);
	}

}
