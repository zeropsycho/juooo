package pojo;

/*
 * 明星图集类
 */

public class J_ActorPhoto {
	private int photoId; //图片编号
	private int actorId; //明星编号
	private String firstPhoto; //明星海报图
	private String photos; //图集

	public J_ActorPhoto() {
		super();
	}

	public J_ActorPhoto(int photoId, int actorId, String firstPhoto,
			String photos) {
		super();
		this.photoId = photoId;
		this.actorId = actorId;
		this.firstPhoto = firstPhoto;
		this.photos = photos;
	}

	public int getPhotoId() {
		return photoId;
	}
	public void setPhotoId(int photoId) {
		this.photoId = photoId;
	}
	public int getActorId() {
		return actorId;
	}
	public void setActorId(int actorId) {
		this.actorId = actorId;
	}
	public String getFirstPhoto() {
		return firstPhoto;
	}
	public void setFirstPhoto(String firstPhoto) {
		this.firstPhoto = firstPhoto;
	}
	public String getPhotos() {
		return photos;
	}
	public void setPhotos(String photos) {
		this.photos = photos;
	}

	@Override
	public String toString() {
		return "J_ActorPhoto [photoId=" + photoId + ", actorId=" + actorId
				+ ", firstPhoto=" + firstPhoto + ", photos=" + photos + "]";
	}

}
