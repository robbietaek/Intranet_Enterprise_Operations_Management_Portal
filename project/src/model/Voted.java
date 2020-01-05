package model;

public class Voted {
	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Voted [id=" + id + "]";
	}
	
}
