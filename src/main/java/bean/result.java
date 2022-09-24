package bean;

public class result {
	private int id;
	private String prize;
	private String place;
	private String city;
	private String ngay;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPrize() {
		return prize;
	}
	public void setPrize(String prize) {
		this.prize = prize;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getNgay() {
		return ngay;
	}
	public void setNgay(String ngay) {
		this.ngay = ngay;
	}
	public result(int id, String prize, String place, String city, String ngay) {
		super();
		this.id = id;
		this.prize = prize;
		this.place = place;
		this.city = city;
		this.ngay = ngay;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
}
