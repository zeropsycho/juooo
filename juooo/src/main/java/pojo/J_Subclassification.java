package pojo;

/*
 * 子分类类
 */

public class J_Subclassification {
	private int subclassification; //子分类编号
	private int classificationOfGoodsId; //商品编号
	private String sName; //子分类名称
	public J_Subclassification() {
		super();
	}
	public J_Subclassification(int subclassification,
			int classificationOfGoodsId, String sName) {
		super();
		this.subclassification = subclassification;
		this.classificationOfGoodsId = classificationOfGoodsId;
		this.sName = sName;
	}
	public int getSubclassification() {
		return subclassification;
	}
	public void setSubclassification(int subclassification) {
		this.subclassification = subclassification;
	}
	public int getClassificationOfGoodsId() {
		return classificationOfGoodsId;
	}
	public void setClassificationOfGoodsId(int classificationOfGoodsId) {
		this.classificationOfGoodsId = classificationOfGoodsId;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	@Override
	public String toString() {
		return "J_Subclassification [subclassification=" + subclassification
				+ ", classificationOfGoodsId=" + classificationOfGoodsId
				+ ", sName=" + sName + "]";
	}
	
}
