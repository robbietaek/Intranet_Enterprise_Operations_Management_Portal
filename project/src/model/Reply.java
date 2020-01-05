package model;

import java.util.Date;

public class Reply {
	private int replynum;
	private String id;
	private int num;
	private String content;
	private Date regdate;
	public int getReplynum() {
		return replynum;
	}
	public void setReplynum(int replynum) {
		this.replynum = replynum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "Reply [replynum=" + replynum + ", id=" + id + ", num=" + num + ", content=" + content + ", regdate="
				+ regdate + "]";
	}
	
}
