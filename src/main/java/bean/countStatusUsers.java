package bean;

public class countStatusUsers {
	private int all;
	private int admin;
	private int subs;
	private int sus;
	private int ban;
	
	public countStatusUsers(int all, int admin, int subs, int sus, int ban) {
		super();
		this.all = all;
		this.admin = admin;
		this.subs = subs;
		this.sus = sus;
		this.ban = ban;
	}
	public int getAll() {
		return all;
	}
	public void setAll(int all) {
		this.all = all;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	public int getSubs() {
		return subs;
	}
	public void setSubs(int subs) {
		this.subs = subs;
	}
	public int getSus() {
		return sus;
	}
	public void setSus(int sus) {
		this.sus = sus;
	}
	public int getBan() {
		return ban;
	}
	public void setBan(int ban) {
		this.ban = ban;
	}
}
