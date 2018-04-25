package pojo;

/**
 * 支付规则
 */
public class J_Paymentmethodorlineitem {
	
     private int payMentmethod;    //支付类型编号
     private int lineItemId;        //订单ID
     public J_Paymentmethodorlineitem() {}
	public J_Paymentmethodorlineitem(int payMentmethod, int lineItemId) {
		super();
		this.payMentmethod = payMentmethod;
		this.lineItemId = lineItemId;
	}
	public int getPayMentmethod() {
		return payMentmethod;
	}
	public void setPayMentmethod(int payMentmethod) {
		this.payMentmethod = payMentmethod;
	}
	public int getLineItemId() {
		return lineItemId;
	}
	public void setLineItemId(int lineItemId) {
		this.lineItemId = lineItemId;
	}
	@Override
	public String toString() {
		return "J_paymentmethodorlineitem [payMentmethod=" + payMentmethod
				+ ", lineItemId=" + lineItemId + "]";
	}
	
     
}
