package pojo;

/*
 * 演出时间表
 */
public class J_PerformanceTimes {
	//演出时间编号
	private int performanceTimesId;
	//演出时间对应的演出
	private int goodsId;
	//演出时间
	private String performanceTimes;

	public J_PerformanceTimes() {
		super();
	}

	public J_PerformanceTimes(int performanceTimesId, int goodsId,
			String performanceTimes) {
		super();
		this.performanceTimesId = performanceTimesId;
		this.goodsId = goodsId;
		this.performanceTimes = performanceTimes;
	}

	public int getPerformanceTimesId() {
		return performanceTimesId;
	}

	public void setPerformanceTimesId(int performanceTimesId) {
		this.performanceTimesId = performanceTimesId;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getPerformanceTimes() {
		return performanceTimes;
	}

	public void setPerformanceTimes(String performanceTimes) {
		this.performanceTimes = performanceTimes;
	}

	@Override
	public String toString() {
		return "J_PerformanceTimes [performanceTimesId=" + performanceTimesId
				+ ", goodsId=" + goodsId + ", performanceTimes="
				+ performanceTimes + "]";
	}

}
