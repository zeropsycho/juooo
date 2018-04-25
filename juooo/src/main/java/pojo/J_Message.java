package pojo;

/**
 * 资讯
 * @author ZERO
 *
 */
public class J_Message {
	private int messageid;                      //资讯ID
	private int informationclassificationid;    //信息分类id
	private String informationfordetails;       //资讯的详细信息
	private String title; //标题
	private String dateline; //时间
	private String introduction; //简介
	
	private J_Informationclassification icii;
	
	public J_Informationclassification getIcii() {
		return icii;
	}
	public void setIcii(J_Informationclassification icii) {
		this.icii = icii;
	}
	public J_Message(int messageid, int informationclassificationid, String informationfordetails, String title,
			String dateline, String introduction) {
		super();
		this.messageid = messageid;
		this.informationclassificationid = informationclassificationid;
		this.informationfordetails = informationfordetails;
		this.title = title;
		this.dateline = dateline;
		this.introduction = introduction;
	}
	public J_Message() {
		super();
	}
	public int getMessageid() {
		return messageid;
	}
	public void setMessageid(int messageid) {
		this.messageid = messageid;
	}
	public int getInformationclassificationid() {
		return informationclassificationid;
	}
	public void setInformationclassificationid(int informationclassificationid) {
		this.informationclassificationid = informationclassificationid;
	}
	public String getInformationfordetails() {
		return informationfordetails;
	}
	public void setInformationfordetails(String informationfordetails) {
		this.informationfordetails = informationfordetails;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDateline() {
		return dateline;
	}
	public void setDateline(String dateline) {
		this.dateline = dateline;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	@Override
	public String toString() {
		return "J_Message [messageid=" + messageid + ", informationclassificationid=" + informationclassificationid
				+ ", informationfordetails=" + informationfordetails + ", title=" + title + ", dateline=" + dateline
				+ ", introduction=" + introduction + "]";
	}
}
