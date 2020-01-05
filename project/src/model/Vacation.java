package model;


public class Vacation {
	private int num;
	private String id;
	private String dept;
	private String startdate;
	private String enddate;
	private String vacationtype;
	private int state;
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
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getVacationtype() {
		return vacationtype;
	}
	public void setVacationtype(String vacationtype) {
		this.vacationtype = vacationtype;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
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
		return "Vacation [num=" + num + ", id=" + id + ", dept=" + dept + ", startdate=" + startdate + ", enddate="
				+ enddate + ", vacationtype=" + vacationtype + ", state=" + state + ", grp=" + grp + ", grplevel="
				+ grplevel + ", grpstep=" + grpstep + "]";
	}
}
