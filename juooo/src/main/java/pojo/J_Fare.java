package pojo;
/*
 * 票价表
 */

public class J_Fare {
	//票价编号
	private int fareId;
	//票价对应的商品
	private int goodsId;
	//票价
	private String fare;

	public J_Fare() {
		super();
	}

	public J_Fare(int fareId, int goodsId, String fare) {
		super();
		this.fareId = fareId;
		this.goodsId = goodsId;
		this.fare = fare;
	}

	public int getFareId() {
		return fareId;
	}

	public void setFareId(int fareId) {
		this.fareId = fareId;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getFare() {
		return fare;
	}

	public void setFare(String fare) {
		this.fare = fare;
	}

	@Override
	public String toString() {
		return "J_Fare [fareId=" + fareId + ", goodsId=" + goodsId + ", fare="
				+ fare + "]";
	}

}
