package model;

public class Process {
	private int num;
	private int grptype;
	private int dept;
	private int deadline;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getGrptype() {
		return grptype;
	}

	public void setGrptype(int grptype) {
		this.grptype = grptype;
	}

	public int getDept() {
		return dept;
	}

	public void setDept(int dept) {
		this.dept = dept;
	}

	public int getDeadline() {
		return deadline;
	}

	public void setDeadline(int deadline) {
		this.deadline = deadline;
	}

	@Override
	public String toString() {
		return "Process [num=" + num + ", grptype=" + grptype + ", dept=" + dept + ", deadline=" + deadline + "]";
	}

}
