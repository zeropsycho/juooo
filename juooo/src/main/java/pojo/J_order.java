package pojo;
/*
 * 订单表
 */
public class J_order {
	private int orderId;           //订单编号
	private int shippingAddressId;  //地址编号
	private int memberId;            //会员编号
	private String state;            //订单状态 
	private String orderTime;         //下单时间
	public J_order() {}
	public J_order(int orderId, int shippingAddressId, int memberId,
			String state, String orderTime) {
		super();
		this.orderId = orderId;
		this.shippingAddressId = shippingAddressId;
		this.memberId = memberId;
		this.state = state;
		this.orderTime = orderTime;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getShippingAddressId() {
		return shippingAddressId;
	}
	public void setShippingAddressId(int shippingAddressId) {
		this.shippingAddressId = shippingAddressId;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	@Override
	public String toString() {
		return "J_order [orderId=" + orderId + ", shippingAddressId="
				+ shippingAddressId + ", memberId=" + memberId + ", state="
				+ state + ", orderTime=" + orderTime + "]";
	}
	

}
