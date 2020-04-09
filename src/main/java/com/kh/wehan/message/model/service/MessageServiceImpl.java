package com.kh.wehan.message.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.message.model.dao.MessageDao;
import com.kh.wehan.message.model.vo.FriendList;
import com.kh.wehan.message.model.vo.Message;
import com.kh.wehan.message.model.vo.MsgSearchCondition;

@Service("msgService")
public class MessageServiceImpl implements MessageService{
	@Autowired
	private MessageDao msgDao;

	/**
	 * 메시지 리스트 가져오기
	 */
	@Override
	public ArrayList<Message> msgList() {
		return msgDao.msgList();
	}

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
}
