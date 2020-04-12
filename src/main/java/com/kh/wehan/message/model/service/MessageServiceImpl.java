package com.kh.wehan.message.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.message.model.dao.MessageDao;
import com.kh.wehan.message.model.vo.FriendInfo;
import com.kh.wehan.message.model.vo.FriendList;
import com.kh.wehan.message.model.vo.Message;
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
	 * 메시지 내용 불러오기
	 */
	@Override
	public ArrayList<Message> getMsgContent(Map m) {
		return msgDao.getMsgContent(m);
	}

	/**
	 * 메시지 저장하기
	 */
	@Override
	public int saveMsgContent(Map msg) {
		return msgDao.saveMsgContent(msg);
	}

	/**
	 * 메시지 삭제하기
	 */
	@Override
	public int msgDelete(Map m) {
		return msgDao.msgDelete(m);
	}
}
