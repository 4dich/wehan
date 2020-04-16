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

	/**
	 * 메시지 읽음 처리
	 * @param m
	 * @return
	 */
	public int msgUpdateRead(Map m) {
		return sqlSession.update("messageMapper.msgUpdateRead", m);
	}

	/**
	 * 안읽은 메시지 갯수 가져오기
	 * @param userId
	 * @return
	 */
	public int getMsgCount(String userId) {
		return sqlSession.selectOne("messageMapper.getMsgCount", userId);
	}


	
	/**
	 * 메시지 저장하기
	 * 1) 메시지룸 번호(MRID) 확인용
	 * @param msg
	 * @return
	 */
	public int checkMessageRoom(Map msg) {
		return sqlSession.selectOne("messageMapper.checkMessageRoom", msg);
	}

	/**
	 * 메시지 저장하기
	 * 2) 메시지룸 번호(MRID) 만들기
	 * @param msg
	 * @return
	 */
	public int insertMrid(Map msg) {
		return sqlSession.insert("messageMapper.insertMrid", msg);
	}

	/**
	 * 메시지 저장하기
	 * 3) 메시지룸 번호(MRID) 가져오기
	 * @param msg
	 * @return
	 */
	public int getMrid(Map msg) {
		return sqlSession.selectOne("messageMapper.getMrid", msg);
	}
	
	/**
	 * 메시지 저장하기
	 * 4) 메시지룸 Del 리셋
	 * @param msg
	 * @return
	 */
	public int updateMrid(Map msg) {
		return sqlSession.update("messageMapper.updateMrid", msg);
	}

	/**
	 * 메시지 저장하기
	 * 5) 메시지 저장하기
	 * @param msg
	 * @return
	 */
	public int saveMsgContent(Map msg) {
		return sqlSession.insert("messageMapper.saveMsgContent", msg);
	}
	
	/**
	 * 메시지 삭제하기 
	 * 1) SenderDel_YN 삭제
	 * @param m
	 * @return
	 */
	public int deleteSenderMsg(Map m) {
		return sqlSession.update("messageMapper.deleteSenderMsg", m);
	}
	

	/**
	 * 메시지 삭제하기 
	 * 2) ReceiverDel_YN 삭제
	 * @param m
	 * @return
	 */
	public int deleteReceiverMsg(Map m) {
		return sqlSession.update("messageMapper.deletReceiverMsg", m);
	}

	/**
	 * 메시지 삭제하기 
	 * 3) User1Del_YN 삭제
	 * @param m
	 * @return
	 */
	public int deleteUser1Msg(Map m) {
		return sqlSession.update("messageMapper.deletUser1Msg", m);
	}

	/**
	 * 메시지 삭제하기 
	 * 4) User2Del_YN 삭제
	 * @param m
	 * @return
	 */
	public int deleteUser2Msg(Map m) {
		return sqlSession.update("messageMapper.deletUser2Msg", m);
	}

	


	
}
