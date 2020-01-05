package model;

public class Member {

	private String id;
	private String name;
	private String dept;
	private String position;
	private String birthday;
	private String hiredate;
	private String tel;
	private String picture;
	private String pass;
	private int membertype;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getHiredate() {
		return hiredate;
	}
	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getMembertype() {
		return membertype;
	}
	public void setMembertype(int membertype) {
		this.membertype = membertype;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", name=" + name + ", dept=" + dept + ", position=" + position + ", birthday="
				+ birthday + ", hiredate=" + hiredate + ", tel=" + tel + ", picture=" + picture + ", pass=" + pass
				+ ", membertype=" + membertype + "]";
	}

	
}
