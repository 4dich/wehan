package com.kh.wehan.message.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.message.model.vo.FriendInfo;
import com.kh.wehan.message.model.vo.FriendList;
import com.kh.wehan.message.model.vo.Message;
import com.kh.wehan.message.model.vo.MessageList;
import com.kh.wehan.message.model.vo.MsgSearchCondition;

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

	/**
	 * 메시지 친구 검색
	 * @param sc
	 * @return
	 */
	public ArrayList<FriendList> msgSearchFriend(MsgSearchCondition sc) {
		return (ArrayList)sqlSession.selectList("messageMapper.msgSearchFriend", sc);
	}

	/**
	 * 메시지 상세보기 친구 정보 불러오기
	 * @param fId
	 * @return
	 */
	public FriendInfo getFriendInfo(String fId) {
		return sqlSession.selectOne("messageMapper.getFriendInfo", fId);
	}

	/**
	 * 메시지 내용 가져오기
	 * @param m
	 * @return
	 */
	public ArrayList<Message> getMsgContent(Map m) {
		return (ArrayList)sqlSession.selectList("messageMapper.getMsgContent", m);
	}

	/**
	 * 메시지 저장하기
	 * @param msg
	 * @return
	 */
	public int saveMsgContent(Map msg) {
		return sqlSession.insert("messageMapper.saveMsgContent", msg);
	}

	/**
	 * 메시지 삭제하기
	 * @param m
	 * @return
	 */
	public int msgDelete(Map m) {
		return sqlSession.update("messgeMapper.msgDelete");
	}

	/**
	 * 메시지 리스트 가져오기
	 * @param userId
	 * @return
	 */
	public ArrayList<MessageList> getMsgList(String userId) {
		return (ArrayList)sqlSession.selectList("messageMapper.getMsgList", userId);
	}

	/**
	 * 메시지 리스트 친구 서치
	 * @param sc
	 * @return
	 */
	public ArrayList<MessageList> msgSearchFriendMsg(MsgSearchCondition sc) {
		return (ArrayList)sqlSession.selectList("messageMapper.msgSearchFriendMsg", sc);
	}


	
}
