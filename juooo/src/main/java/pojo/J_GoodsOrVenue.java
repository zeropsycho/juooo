package pojo;

/**
 * 商品id与场馆id
 * @author ZERO
 *
 */
public class J_GoodsOrVenue {
	// 商品id
	private int goodsId;
	// 场馆id
	private int venueId;

	public J_GoodsOrVenue() {
		super();
	}

	public J_GoodsOrVenue(int goodsId, int venueId) {
		super();
		this.goodsId = goodsId;
		this.venueId = venueId;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public int getVenueId() {
		return venueId;
	}

	public void setVenueId(int venueId) {
		this.venueId = venueId;
	}

	@Override
	public String toString() {
		return "J_goodsOrVenue [goodsId=" + goodsId + ", venueId=" + venueId
				+ "]";
	}

}
