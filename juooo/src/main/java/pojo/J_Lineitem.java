package pojo;

/**
 * 订单详情
 */
public class J_Lineitem {
	
	private String state;            //订单状态
	private double totalMoneyId;      //总金额
	private int lineItemId;           //订单ID
	private int orderId ;             //订单编号
	private int paymentMenthod;       //付款方式
	public J_Lineitem() {}
	public J_Lineitem(String state, double totalMoneyId, int lineItemId,
			int orderId, int paymentMenthod) {
		super();
		this.state = state;
		this.totalMoneyId = totalMoneyId;
		this.lineItemId = lineItemId;
		this.orderId = orderId;
		this.paymentMenthod = paymentMenthod;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public double getTotalMoneyId() {
		return totalMoneyId;
	}
	public void setTotalMoneyId(double totalMoneyId) {
		this.totalMoneyId = totalMoneyId;
	}
	public int getLineItemId() {
		return lineItemId;
	}
	public void setLineItemId(int lineItemId) {
		this.lineItemId = lineItemId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getPaymentMenthod() {
		return paymentMenthod;
	}
	public void setPaymentMenthod(int paymentMenthod) {
		this.paymentMenthod = paymentMenthod;
	}
	@Override
	public String toString() {
		return "J_lineitem [state=" + state + ", totalMoneyId=" + totalMoneyId
				+ ", lineItemId=" + lineItemId + ", orderId=" + orderId
				+ ", paymentMenthod=" + paymentMenthod + "]";
	}
	

}
