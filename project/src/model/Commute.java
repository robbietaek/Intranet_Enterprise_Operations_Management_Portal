package model;

import java.util.Date;

public class Commute {
	private int num;
	private String id;
	private Date empin;
	private Date empout;
	private String subject;
	private String content;
	private int grp;
	private int grplevel;
	private int grpstep;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getEmpin() {
		return empin;
	}
	public void setEmpin(Date empin) {
		this.empin = empin;
	}
	public Date getEmpout() {
		return empout;
	}
	public void setEmpout(Date empout) {
		this.empout = empout;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getGrp() {
		return grp;
	}
	public void setGrp(int grp) {
		this.grp = grp;
	}
	public int getGrplevel() {
		return grplevel;
	}
	public void setGrplevel(int grplevel) {
		this.grplevel = grplevel;
	}
	public int getGrpstep() {
		return grpstep;
	}
	public void setGrpstep(int grpstep) {
		this.grpstep = grpstep;
	}
	@Override
	public String toString() {
		return "Commute [num=" + num + ", id=" + id + ", empin=" + empin + ", empout=" + empout + ", subject=" + subject
				+ ", content=" + content + ", grp=" + grp + ", grplevel=" + grplevel + ", grpstep=" + grpstep + "]";
	}
	
}
