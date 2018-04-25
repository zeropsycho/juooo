package pojo;

public class J_City {
private int cityId; //城市编号
private String cityName; //城市名称

public J_City() {
	super();
}

public J_City(int cityId, String cityName) {
	super();
	this.cityId = cityId;
	this.cityName = cityName;
}

public int getCityId() {
	return cityId;
}
public void setCityId(int cityId) {
	this.cityId = cityId;
}
public String getCityName() {
	return cityName;
}
public void setCityName(String cityName) {
	this.cityName = cityName;
}

@Override
public String toString() {
	return "J_City [cityId=" + cityId + ", cityName=" + cityName + "]";
}

}
