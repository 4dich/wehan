package com.kh.wehan.message.model.service;

import java.util.ArrayList;

import com.kh.wehan.message.model.vo.FriendList;
import com.kh.wehan.message.model.vo.Message;

public interface MessageService {

	/**
	 * 메시지 리스트 가져오기
	 * @return
	 */
	ArrayList<Message> msgList();

	/**
	 * 메시지 친구 목록 가져오기
	 * @param userId
	 * @return
	 */
	ArrayList<FriendList> msgFriendList(String userId);

}
