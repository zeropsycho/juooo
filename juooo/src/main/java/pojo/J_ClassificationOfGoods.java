package pojo;

/*
 * 商品分类表
 */

public class J_ClassificationOfGoods {
	private int classificationOfGoodsId; //商品编号
	private String tradeName; //商品名称
	public J_ClassificationOfGoods() {
		super();
	}
	public J_ClassificationOfGoods(int classificationOfGoodsId, String tradeName) {
		super();
		this.classificationOfGoodsId = classificationOfGoodsId;
		this.tradeName = tradeName;
	}
	public int getClassificationOfGoodsId() {
		return classificationOfGoodsId;
	}
	public void setClassificationOfGoodsId(int classificationOfGoodsId) {
		this.classificationOfGoodsId = classificationOfGoodsId;
	}
	public String getTradeName() {
		return tradeName;
	}
	public void setTradeName(String tradeName) {
		this.tradeName = tradeName;
	}
	@Override
	public String toString() {
		return "J_ClassificationOfGoods [classificationOfGoodsId="
				+ classificationOfGoodsId + ", tradeName=" + tradeName + "]";
	}
	
}
