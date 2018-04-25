package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import dao.MessageMapper;
/*import dao.impl.MessageDaoImpl;*/
import pojo.J_Message;
import service.MessageService;

@Service("messageService")
public class MessageServiceImpl implements MessageService{

	@Resource
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;

	public List<J_Message> getMList() {
		List<J_Message> message = sqlSessionTemplate.getMapper(MessageMapper.class).getMessageMapping();
		return message;
	}

	public List<J_Message> findMessage(J_Message m) {
		List<J_Message> ms = sqlSessionTemplate.getMapper(MessageMapper.class).findMessage(m);
		return ms;
	}
}
