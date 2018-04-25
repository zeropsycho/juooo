package pojo;

/**
 * 资讯分类
 * @author ZERO
 *
 */
public class J_Informationclassification {
	private int informationClassificationId; //资讯类型ID
    private String type; //资讯类型
   
	public J_Informationclassification() {
		super();
	}

	public J_Informationclassification(int informationClassificationID,
			String type) {
		super();
		this.informationClassificationId = informationClassificationID;
		this.type = type;
	}

	public int getInformationClassificationID() {
		return informationClassificationId;
	}

	public void setInformationClassificationID(int informationClassificationID) {
		this.informationClassificationId = informationClassificationID;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "InformationClassification [informationClassificationID="
				+ informationClassificationId + ", type=" + type + "]";
	}
    
}
