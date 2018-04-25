package pojo;

/*
 * 明星类
 */

public class J_Actor {
	private int actorId; //明星编号
	private int cityId; //城市编号
	private String actorName; //名字
	private String englishName; //英文名
	private String details; //明星详情
	private String profession; //职业
	private String areaName; //明星地区
	private String type; //明星类型
	
	public J_Actor() {
		super();
	}
	
	public J_Actor(int actorId, int cityId, String actorName,
			String englishName, String details, String profession,
			String areaName, String type) {
		super();
		this.actorId = actorId;
		this.cityId = cityId;
		this.actorName = actorName;
		this.englishName = englishName;
		this.details = details;
		this.profession = profession;
		this.areaName = areaName;
		this.type = type;
	}

	public int getActorId() {
		return actorId;
	}
	public void setActorId(int actorId) {
		this.actorId = actorId;
	}
	public int getCityId() {
		return cityId;
	}
	public void setCityId(int cityId) {
		this.cityId = cityId;
	}
	public String getActorName() {
		return actorName;
	}
	public void setActorName(String actorName) {
		this.actorName = actorName;
	}
	public String getEnglishName() {
		return englishName;
	}
	public void setEnglishName(String englishName) {
		this.englishName = englishName;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Override
	public String toString() {
		return "J_Actor [actorId=" + actorId + ", cityId=" + cityId
				+ ", actorName=" + actorName + ", englishName=" + englishName
				+ ", details=" + details + ", profession=" + profession
				+ ", areaName=" + areaName + ", type=" + type + "]";
	}
}
