package com.kh.wehan.message.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.message.model.vo.FriendList;
import com.kh.wehan.message.model.vo.Message;

@Repository("msgDao")
public class MessageDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * 메시지 리스트 가져오기
	 * @return
	 */
	public ArrayList<Message> msgList() {
		return (ArrayList)sqlSession.selectList("messageMapper.msgList");
	}

	/**
	 * 메시지 친구 목록 가져오기
	 * @param userId
	 * @return
	 */
	public ArrayList<FriendList> msgFriendList(String userId) {
		return (ArrayList)sqlSession.selectList("messageMapper.msgFriendList", userId);
	}

	
}
