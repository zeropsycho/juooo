package pojo;

/*
 *明星资讯类
 */

public class J_ActorInfornation {
private int actorInformationId; //资讯编号
private int actorId; //明星编号
private String information; //资讯

public J_ActorInfornation() {
	super();
}

public J_ActorInfornation(int actorInformationId, int actorId,
		String information) {
	super();
	this.actorInformationId = actorInformationId;
	this.actorId = actorId;
	this.information = information;
}

public int getActorInformationId() {
	return actorInformationId;
}
public void setActorInformationId(int actorInformationId) {
	this.actorInformationId = actorInformationId;
}
public int getActorId() {
	return actorId;
}
public void setActorId(int actorId) {
	this.actorId = actorId;
}
public String getInformation() {
	return information;
}
public void setInformation(String information) {
	this.information = information;
}

@Override
public String toString() {
	return "J_ActorInfornation [actorInformationId=" + actorInformationId
			+ ", actorId=" + actorId + ", information=" + information + "]";
}

}
