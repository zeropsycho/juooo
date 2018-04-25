package juooo.test;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Qualifier;

import dao.MessageMapper;
import pojo.J_Message;

public class Test {

	@Resource
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	@org.junit.Test
	public List<J_Message> getList(J_Message m) {
		
		List<J_Message> ms = sqlSession.getMapper(MessageMapper.class).findMessage(m);
		
		return ms;
		
	}
}
