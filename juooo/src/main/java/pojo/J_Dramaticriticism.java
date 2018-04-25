package pojo;
/*
 * 商品剧评表
 */
public class J_Dramaticriticism {
	//剧评编号
	private int dramaticCriticismId;
	//被评论商品id
	private int goodsId;
	//评分
	private int grade;
	//评论时间
	private String gradetime;
	//剧评内容
	private String content;

	public J_Dramaticriticism() {
		super();
	}

	public J_Dramaticriticism(int dramaticCriticismId, int goodsId, int grade,
			String gradetime, String content) {
		super();
		this.dramaticCriticismId = dramaticCriticismId;
		this.goodsId = goodsId;
		this.grade = grade;
		this.gradetime = gradetime;
		this.content = content;
	}

	public int getDramaticCriticismId() {
		return dramaticCriticismId;
	}

	public void setDramaticCriticismId(int dramaticCriticismId) {
		this.dramaticCriticismId = dramaticCriticismId;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getGradetime() {
		return gradetime;
	}

	public void setGradetime(String gradetime) {
		this.gradetime = gradetime;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "J_Dramaticriticism [dramaticCriticismId=" + dramaticCriticismId
				+ ", goodsId=" + goodsId + ", grade=" + grade + ", gradetime="
				+ gradetime + ", content=" + content + "]";
	}

}
