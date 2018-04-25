package pojo;

/*
 * 剧照表
 */

public class J_Stills {
	// 剧照编号
	private int stillsId;
	// 剧照对应的商品编号
	private int goodsId;
	// 剧照名称
	private String stillsName;

	public J_Stills() {
		super();
	}

	public J_Stills(int stillsId, int goodsId, String stillsName) {
		super();
		this.stillsId = stillsId;
		this.goodsId = goodsId;
		this.stillsName = stillsName;
	}

	public int getStillsId() {
		return stillsId;
	}

	public void setStillsId(int stillsId) {
		this.stillsId = stillsId;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getStillsName() {
		return stillsName;
	}

	public void setStillsName(String stillsName) {
		this.stillsName = stillsName;
	}

	@Override
	public String toString() {
		return "J_Stills [stillsId=" + stillsId + ", goodsId=" + goodsId
				+ ", stillsName=" + stillsName + "]";
	}

}
