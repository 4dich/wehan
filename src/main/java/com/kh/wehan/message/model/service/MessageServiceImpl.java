package com.kh.wehan.message.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.message.model.dao.MessageDao;
import com.kh.wehan.message.model.vo.FriendInfo;
import com.kh.wehan.message.model.vo.FriendList;
import com.kh.wehan.message.model.vo.Message;
import com.kh.wehan.message.model.vo.MessageList;
import com.kh.wehan.message.model.vo.MsgSearchCondition;

@Service("msgService")
public class MessageServiceImpl implements MessageService{
	@Autowired
	private MessageDao msgDao;

	
	/**
	 * 메시지 친구 목록 가져오기
	 */
	@Override
	public ArrayList<FriendList> msgFriendList(String userId) {
		return msgDao.msgFriendList(userId);
	}

	/**
	 * 메시지 친구 검색
	 */
	@Override
	public ArrayList<FriendList>  msgSearchFriend(MsgSearchCondition sc) {
		return msgDao.msgSearchFriend(sc);
	}

	/**
	 * 메시지 상세보기  친구 정보 불러오기
	 */
	@Override
	public FriendInfo getFriendInfo(String fId) {
		return msgDao.getFriendInfo(fId);
	}

	/**
	 * 메시지 내용 불러오기 + 메시지 읽음 처리
	 */
	@Override
	public ArrayList<Message> getMsgContent(Map m) {
		

		// 메시지 읽음 처리
		int result = msgDao.msgUpdateRead(m);
			
		
		return msgDao.getMsgContent(m);
		
	}

	/**
	 * 메시지 저장하기
	 */
	@Override
	public int saveMsgContent(Map msg) {
		
		int insertMrid = 0;
		int updateDel = 0;
				
		// 메시지룸 번호(MRID) 있는지 확인
		int checkMessageRoom = msgDao.checkMessageRoom(msg);
		
		// 메시지룸 번호가 없으면 만들어주기
		if(checkMessageRoom == 0) { 
			insertMrid = msgDao.insertMrid(msg);
		} else { // 메시지룸 번호가 있으면 DEL을 1로 만들어주기
			updateDel = msgDao.updateMrid(msg);
		}
		
		// 메시지룸 번호 가져오기
		int getMrid = msgDao.getMrid(msg);
		
		msg.put("mrId", getMrid);
		
		return msgDao.saveMsgContent(msg);
	}

	/**
	 * 메시지 삭제하기
	 */
	@Override
	public int msgDelete(Map m) {
		
		// 보낸 사람 메시지 삭제
		int delSender = msgDao.deleteSenderMsg(m);
		// 받은 사람 메시지 삭제
		int delReceiver = msgDao.deleteReceiverMsg(m);
		
					
		// messageRoom USER1 삭제
		int delUser1 = msgDao.deleteUser1Msg(m);
		
		// USER1삭제가 안되면 USER2 삭제
		int delUser2 = 0;
		
		if(delUser1 == 0) {
			delUser2 = msgDao.deleteUser2Msg(m);
		}
		
		int result = delUser1 + delUser2;
		
		return result;
	}

	/**
	 * 메시지 리스트 가져오기 
	 */
	@Override
	public ArrayList<MessageList> getMsgList(String userId) {
		return msgDao.getMsgList(userId);
	}

	/**
	 * 메시지 리스트 서치
	 */
	@Override
	public ArrayList<MessageList> msgSearchFriendMsg(MsgSearchCondition sc) {
		return msgDao.msgSearchFriendMsg(sc);
	}

	/**
	 * 안읽은 메시지 갯수 가져오기
	 */
	@Override
	public int getMsgCount(String userId) {
		return msgDao.getMsgCount(userId);
	}

	
}
