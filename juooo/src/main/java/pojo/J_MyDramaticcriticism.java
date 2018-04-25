package pojo;

/**
 * 我的剧评表
 * @author ZERO
 *
 */
public class J_MyDramaticcriticism {
	private int myDramaticCriticismId;  //我的剧评ID
	private int memberId;   //会员ID
	private int goodsPictureId; //商品图片ID
	private int grade;   //评分
	private String commentDate; //评论日期
	private String commentContent; //评论内容
	private int upvote;  //点赞
	
	public J_MyDramaticcriticism() {
		super();
		// TODO Auto-generated constructor stub
	}

	public J_MyDramaticcriticism(int myDramaticCriticismId, int memberId,
			int goodsPictureId, int grade, String commentDate,
			String commentContent, int upvote) {
		super();
		this.myDramaticCriticismId = myDramaticCriticismId;
		this.memberId = memberId;
		this.goodsPictureId = goodsPictureId;
		this.grade = grade;
		this.commentDate = commentDate;
		this.commentContent = commentContent;
		this.upvote = upvote;
	}

	public int getMyDramaticCriticismId() {
		return myDramaticCriticismId;
	}

	public void setMyDramaticCriticismId(int myDramaticCriticismId) {
		this.myDramaticCriticismId = myDramaticCriticismId;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public int getGoodsPictureId() {
		return goodsPictureId;
	}

	public void setGoodsPictureId(int goodsPictureId) {
		this.goodsPictureId = goodsPictureId;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public int getUpvote() {
		return upvote;
	}

	public void setUpvote(int upvote) {
		this.upvote = upvote;
	}

	@Override
	public String toString() {
		return "Mydramaticcriticism [myDramaticCriticismId="
				+ myDramaticCriticismId + ", memberId=" + memberId
				+ ", goodsPictureId=" + goodsPictureId + ", grade=" + grade
				+ ", commentDate=" + commentDate + ", commentContent="
				+ commentContent + ", upvote=" + upvote + "]";
	}
	
	

}
