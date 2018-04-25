package dao;

import java.util.List;

import pojo.J_Message;
import query.PageQuery;
import util.Page;

public interface MessageMapper {

	/**
	 * 查找所有资讯
	 * @param message
	 * @return
	 */
	public List<J_Message> getMessageMapping();
	
	/**
	 * 根据查询条件，查询资讯信息
	 * @param searchModel 查询条件
	 * @param pageNum	查询第几页
	 * @param pageSize	每条显示多少条记录
	 * @return
	 */
	public Page<J_Message> findMessage(PageQuery searchModel, int pageNum, int pageSize);
	
	public List<J_Message> findMessage(J_Message m);
}
