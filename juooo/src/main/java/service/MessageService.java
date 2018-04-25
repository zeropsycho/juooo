package service;

import java.util.List;

import pojo.J_Message;

public interface MessageService {

	public List<J_Message> getMList();
	
	public List<J_Message> findMessage(J_Message m);
}
