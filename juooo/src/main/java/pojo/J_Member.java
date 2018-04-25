package pojo;



public class J_Member {
	/*
	 * 会员表
	 */
	private int memberId;            //会员编号
	private String userName ;        //用户名
	private String passWord;         //密码
	private String nickName;         //昵称
	private String email;            //邮箱
	private String phone;            //手机号
	private String realname;         //真实姓名
	private String idCard;           //身份证号码
	private String sex;              //性别
	private String love;             //爱好
	private String residence;        //演出喜好
	private String address;          //居住地址
	private String  birthDate;       //详细地址
	private String han;              //出生日期
	private String education;        //婚姻状况
	private String income;           //教育程度
	public J_Member() {} 
	public J_Member(int memberId, String userName, String passWord,
			String nickName, String email, String phone, String realname,
			String idCard, String sex, String love, String residence,
			String address, String birthDate, String han, String education,
			String income) {
		super();
		this.memberId = memberId;
		this.userName = userName;
		this.passWord = passWord;
		this.nickName = nickName;
		this.email = email;
		this.phone = phone;
		this.realname = realname;
		this.idCard = idCard;
		this.sex = sex;
		this.love = love;
		this.residence = residence;
		this.address = address;
		this.birthDate = birthDate;
		this.han = han;
		this.education = education;
		this.income = income;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getLove() {
		return love;
	}
	public void setLove(String love) {
		this.love = love;
	}
	public String getResidence() {
		return residence;
	}
	public void setResidence(String residence) {
		this.residence = residence;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public String getHan() {
		return han;
	}
	public void setHan(String han) {
		this.han = han;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getIncome() {
		return income;
	}
	public void setIncome(String income) {
		this.income = income;
	}
	@Override
	public String toString() {
		return "J_member [memberId=" + memberId + ", userName=" + userName
				+ ", passWord=" + passWord + ", nickName=" + nickName
				+ ", email=" + email + ", phone=" + phone + ", realname="
				+ realname + ", idCard=" + idCard + ", sex=" + sex + ", love="
				+ love + ", residence=" + residence + ", address=" + address
				+ ", birthDate=" + birthDate + ", han=" + han + ", education="
				+ education + ", income=" + income + "]";
	}
	
	
	
	
	

}
