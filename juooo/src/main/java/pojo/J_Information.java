package pojo;
/*
 * 商品资讯表
 */

public class J_Information {
	//资讯编号
	private int informationid;
	//资讯对应的商品id
	private int goodsId;
	//标题
	private String title;
	//时间
	private String addTime;
	//来源
	private String source;
	//浏览量
	private int pageview;
	//正文
	private String body;

	public J_Information() {
		super();
	}

	public J_Information(int informationid, int goodsId, String title,
			String addTime, String source, int pageview, String body) {
		super();
		this.informationid = informationid;
		this.goodsId = goodsId;
		this.title = title;
		this.addTime = addTime;
		this.source = source;
		this.pageview = pageview;
		this.body = body;
	}

	public int getInformationid() {
		return informationid;
	}

	public void setInformationid(int informationid) {
		this.informationid = informationid;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAddTime() {
		return addTime;
	}

	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public int getPageview() {
		return pageview;
	}

	public void setPageview(int pageview) {
		this.pageview = pageview;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	@Override
	public String toString() {
		return "J_Information [informationid=" + informationid + ", goodsId="
				+ goodsId + ", title=" + title + ", addTime=" + addTime
				+ ", source=" + source + ", pageview=" + pageview + ", body="
				+ body + "]";
	}

}
