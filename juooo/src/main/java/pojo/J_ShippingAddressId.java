package pojo;

/*
 * 收货地址类
 */

public class J_ShippingAddressId {
	private int shippingAddressId; //收货地址编号
	private int memberId; //收件人编号（会员编号）
	private String region; //地区
	private String address; //详细地址
	private String postCode; //邮编
	private String phone; //手机号
	private String telephone; //固定电话
	private String email; //邮箱
	private String moren; //是否为默认收件
	private String consignee; //收件人
	
	public J_ShippingAddressId() {
		super();
	}
	
	public J_ShippingAddressId(int shippingAddressId, int memberId,
			String region, String address, String postCode, String phone,
			String telephone, String email, String moren, String consignee) {
		super();
		this.shippingAddressId = shippingAddressId;
		this.memberId = memberId;
		this.region = region;
		this.address = address;
		this.postCode = postCode;
		this.phone = phone;
		this.telephone = telephone;
		this.email = email;
		this.moren = moren;
		this.consignee = consignee;
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
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPostCode() {
		return postCode;
	}
	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMoren() {
		return moren;
	}
	public void setMoren(String moren) {
		this.moren = moren;
	}
	public String getConsignee() {
		return consignee;
	}
	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}
	
	@Override
	public String toString() {
		return "J_ShippingAddressId [shippingAddressId=" + shippingAddressId
				+ ", memberId=" + memberId + ", region=" + region
				+ ", address=" + address + ", postCode=" + postCode
				+ ", phone=" + phone + ", telephone=" + telephone + ", email="
				+ email + ", moren=" + moren + ", consignee=" + consignee + "]";
	}
	
}
