package bean;

public class history {
	private int id_his;
	private int id_user;
	private String number;
	private String day_check;
	private String day;
	private String place;
	public history(int id_his, int id_user, String number, String day_check, String day, String place) {
		super();
		this.id_his = id_his;
		this.id_user = id_user;
		this.number = number;
		this.day_check = day_check;
		this.day = day;
		this.place = place;
	}
	public int getId_his() {
		return id_his;
	}
	public void setId_his(int id_his) {
		this.id_his = id_his;
	}
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getDay_check() {
		return day_check;
	}
	public void setDay_check(String day_check) {
		this.day_check = day_check;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
}
