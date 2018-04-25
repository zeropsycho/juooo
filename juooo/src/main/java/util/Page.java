package util;

import java.util.List;

public class Page<T> {

	private int pageSize; //每页显示多少条记录
	private int currentPage; //当前第几页数据
	private int totalRecord; //一共多少页
	private List<T> dataList; //要显示的信息
	
	
}
