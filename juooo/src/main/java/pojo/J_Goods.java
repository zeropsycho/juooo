package pojo;

/*
 * 商品表
 */

public class J_Goods {
	private int goodId; //商品编号
	private int classificationOfGoodsId; //商品编号2(对应商品场馆表中 的 商品id)
	private int subclassificationId; //子分类编号
	private int actorId; //明星编号
	private String title; //标题
	private String performsummary; //演出简介
	public J_Goods() {
		super();
	}
	public String getPerformsummary() {
		return performsummary;
	}
	public void setPerformsummary(String performsummary) {
		this.performsummary = performsummary;
	}
	public J_Goods(int goodId, int classificationOfGoodsId,
			int subclassificationId, int actorId, String title) {
		super();
		this.goodId = goodId;
		this.classificationOfGoodsId = classificationOfGoodsId;
		this.subclassificationId = subclassificationId;
		this.actorId = actorId;
		this.title = title;
	}
	public int getGoodId() {
		return goodId;
	}
	public void setGoodId(int goodId) {
		this.goodId = goodId;
	}
	public int getClassificationOfGoodsId() {
		return classificationOfGoodsId;
	}
	public void setClassificationOfGoodsId(int classificationOfGoodsId) {
		this.classificationOfGoodsId = classificationOfGoodsId;
	}
	public int getSubclassificationId() {
		return subclassificationId;
	}
	public void setSubclassificationId(int subclassificationId) {
		this.subclassificationId = subclassificationId;
	}
	public int getActorId() {
		return actorId;
	}
	public void setActorId(int actorId) {
		this.actorId = actorId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "J_Goods [goodId=" + goodId + ", classificationOfGoodsId="
				+ classificationOfGoodsId + ", subclassificationId="
				+ subclassificationId + ", actorId=" + actorId + ", title="
				+ title + ",performsummary" + "]";
	}
	
}
