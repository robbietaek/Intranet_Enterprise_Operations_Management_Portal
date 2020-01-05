package model;

public class Vote {
	private String id;
	private String votedid;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getVotedid() {
		return votedid;
	}
	public void setVotedid(String votedid) {
		this.votedid = votedid;
	}
	@Override
	public String toString() {
		return "Vote [id=" + id + ", votedid=" + votedid + "]";
	}
	
}
