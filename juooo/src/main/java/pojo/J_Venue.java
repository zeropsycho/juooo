package pojo;
/*
 * 场馆表
 */

public class J_Venue {
	// 场馆编号
	private int venueId;
	// 标题
	private String title;
	// 详细地址
	private String address;
	// 手机号
	private String phone;
	// 公交车
	private String bus;

	public J_Venue() {
		super();
	}

	public J_Venue(int venueId, String title, String address, String phone,
			String bus) {
		super();
		this.venueId = venueId;
		this.title = title;
		this.address = address;
		this.phone = phone;
		this.bus = bus;
	}

	public int getVenueId() {
		return venueId;
	}

	public void setVenueId(int venueId) {
		this.venueId = venueId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBus() {
		return bus;
	}

	public void setBus(String bus) {
		this.bus = bus;
	}

	@Override
	public String toString() {
		return "J_Venue [venueId=" + venueId + ", title=" + title
				+ ", address=" + address + ", phone=" + phone + ", bus=" + bus
				+ "]";
	}

}