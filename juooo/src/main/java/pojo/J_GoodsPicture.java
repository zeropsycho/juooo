package pojo;

/**
 * 商品图片
 * @author ZERO
 *
 */
public class J_GoodsPicture {
	// 商品图片编号
	private int goodsPictureId;
	// 图片对应的商品编号
	private int goodsId;
	// 剧评编号
	private int myDramaticCriticismId;
	// 商品图片名称
	private int goodsPictureName;

	public J_GoodsPicture() {
		super();
	}

	public J_GoodsPicture(int goodsPictureId, int goodsId,
			int myDramaticCriticismId, int goodsPictureName) {
		super();
		this.goodsPictureId = goodsPictureId;
		this.goodsId = goodsId;
		this.myDramaticCriticismId = myDramaticCriticismId;
		this.goodsPictureName = goodsPictureName;
	}

	public int getGoodsPictureId() {
		return goodsPictureId;
	}

	public void setGoodsPictureId(int goodsPictureId) {
		this.goodsPictureId = goodsPictureId;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public int getMyDramaticCriticismId() {
		return myDramaticCriticismId;
	}

	public void setMyDramaticCriticismId(int myDramaticCriticismId) {
		this.myDramaticCriticismId = myDramaticCriticismId;
	}

	public int getGoodsPictureName() {
		return goodsPictureName;
	}

	public void setGoodsPictureName(int goodsPictureName) {
		this.goodsPictureName = goodsPictureName;
	}

	@Override
	public String toString() {
		return "J_GoodsPicture [goodsPictureId=" + goodsPictureId
				+ ", goodsId=" + goodsId + ", myDramaticCriticismId="
				+ myDramaticCriticismId + ", goodsPictureName="
				+ goodsPictureName + "]";
	}

}
