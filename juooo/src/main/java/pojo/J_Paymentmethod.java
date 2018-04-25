package pojo;

/**
 * 支付方式
 */
public class J_Paymentmethod {
	
	private int payMentmethodId;  //支付类型编号
	private String type;           //类型
	private String payType;        //支付方式
	public J_Paymentmethod() {}
	public J_Paymentmethod(int payMentmethodId, String type, String payType) {
		super();
		this.payMentmethodId = payMentmethodId;
		this.type = type;
		this.payType = payType;
	}
	public int getPayMentmethodId() {
		return payMentmethodId;
	}
	public void setPayMentmethodId(int payMentmethodId) {
		this.payMentmethodId = payMentmethodId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPayType() {
		return payType;
	}
	public void setPayType(String payType) {
		this.payType = payType;
	}
	@Override
	public String toString() {
		return "J_paymentmethod [payMentmethodId=" + payMentmethodId
				+ ", type=" + type + ", payType=" + payType + "]";
	}
	

}
