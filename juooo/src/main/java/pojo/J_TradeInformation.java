package pojo;

/**
 * 交易信息
 * @author ZERO
 *
 */
public class J_TradeInformation {
	private int tradeinformationId;//交易信息ID
	private int lineItemId;   //订单ID
	private float goodsTogether;//商品合计
	private float thefreighTamount;//运费合计
	private float deduction; //抵扣
	private float discounts; //优惠
	
	public J_TradeInformation() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getTradeinformationId() {
		return tradeinformationId;
	}
	public void setTradeinformationId(int tradeinformationId) {
		this.tradeinformationId = tradeinformationId;
	}
	public int getLineItemId() {
		return lineItemId;
	}
	public void setLineItemId(int lineItemId) {
		this.lineItemId = lineItemId;
	}
	public float getGoodsTogether() {
		return goodsTogether;
	}
	public void setGoodsTogether(float goodsTogether) {
		this.goodsTogether = goodsTogether;
	}
	public float getThefreighTamount() {
		return thefreighTamount;
	}
	public void setThefreighTamount(float thefreighTamount) {
		this.thefreighTamount = thefreighTamount;
	}
	public float getDeduction() {
		return deduction;
	}
	public void setDeduction(float deduction) {
		this.deduction = deduction;
	}
	public float getDiscounts() {
		return discounts;
	}
	public void setDiscounts(float discounts) {
		this.discounts = discounts;
	}
	public J_TradeInformation(int tradeinformationId, int lineItemId,
			float goodsTogether, float thefreighTamount, float deduction,
			float discounts) {
		super();
		this.tradeinformationId = tradeinformationId;
		this.lineItemId = lineItemId;
		this.goodsTogether = goodsTogether;
		this.thefreighTamount = thefreighTamount;
		this.deduction = deduction;
		this.discounts = discounts;
	}

	@Override
	public String toString() {
		return "J_tradeInformation [tradeinformationId=" + tradeinformationId
				+ ", lineItemId=" + lineItemId + ", goodsTogether="
				+ goodsTogether + ", thefreighTamount=" + thefreighTamount
				+ ", deduction=" + deduction + ", discounts=" + discounts + "]";
	}
	
     
}
