package bean;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class lottery {
	private int lotteryID;
	private String user;
	private String status;
	private String ngay;
	private String place;
	private String city;
	private String g8;
	private String g7;
	private String g6;
	private String g5;
	private String g4;
	private String g3;
	private String g2;
	private String g1;
	private String gDB;
	private String description;
	private String used;
	private String city1;
	public lottery(int lotteryID, String user, String status, String ngay, String place,String city, String g8, String g7,
			String g6, String g5, String g4, String g3, String g2, String g1, String gDB, String description, String used) {
		super();
		this.lotteryID = lotteryID;
		this.user = user;
		this.status = status;
		this.ngay = ngay;
		this.place = place;
		this.city = city;
		this.g8 = g8;
		this.g7 = g7;
		this.g6 = g6;
		this.g5 = g5;
		this.g4 = g4;
		this.g3 = g3;
		this.g2 = g2;
		this.g1 = g1;
		this.gDB = gDB;
		this.description = description;
		this.used = used;
			
			if(city!=null)	{
				if(city.equals("MB")) {
				if(place.equals("BN")) {
					this.city1="Bắc Ninh";
				}if(place.equals("HN")) {
					this.city1="Hà Nội";
				}if(place.equals("HP")) {
					this.city1="Hải Phòng";
				}if(place.equals("ND")) {
					this.city1="Nam Định";
				}if(place.equals("QN")) {
					this.city1="Quảng Ninh";
				}if(place.equals("TB")) {
					this.city1="Thái Bình";
				}
			}
			if(city.equals("MT")) {
				if(place.equals("BD")) {
					this.city1="Bình Định";
				}if(place.equals("DN")) {
					this.city1="Đà Nẵng";
				}if(place.equals("DL")) {
					this.city1="Đắk Lắk";
				}if(place.equals("DNG")) {
					this.city1="Đắk Nông";
				}if(place.equals("GL")) {
					this.city1="Gia Lai";
				}if(place.equals("H")) {
					this.city1="Huế";
				}if(place.equals("KH")) {
					this.city1="Khánh Hòa";
				}if(place.equals("KT")) {
					this.city1="Kon Tum";
				}if(place.equals("NT")) {
					this.city1="Ninh Thuận";
				}if(place.equals("PY")) {
					this.city1="Phú Yên";
				}if(place.equals("QB")) {
					this.city1="Quảng Bình";
				}if(place.equals("QNM")) {
					this.city1="Quảng Nam";
				}if(place.equals("QNI")) {
					this.city1="Quảng Ngãi";
				}if(place.equals("QT")) {
					this.city1="Quảng Trị";
				}
			}
			if(city.equals("MN")) {
				if( place.equals("AG")) {
					this.city1="An Giang";
				}if(place.equals("BL")) {
					this.city1="Bạc Liêu";
				}if(place.equals("BTE")) {
					this.city1="Bến Tre";
				}if(place.equals("BDN")) {
					this.city1="Bình Dương";
				}if(place.equals("BP")) {
					this.city1="Bình Phước";
				}if(place.equals("BTN")) {
					this.city1="Bình Thuận";
				}if(place.equals("CM")) {
					this.city1="Cà Mau";
				}if(place.equals("CT")) {
					this.city1="Cần Thơ";
				}if(place.equals("DL")) {
					this.city1="Đà Lạt";
				}if(place.equals("DNI")) {
					this.city1="Đồng Nai";
				}if(place.equals("DT")) {
					this.city1="Đồng Tháp";
				}if(place.equals("HG")) {
					this.city1="Hậu Giang";
				}if(place.equals("KG")) {
					this.city1="Kiên Giang";
				}if(place.equals("LA")) {
					this.city1="Long An";
				}if(place.equals("ST")) {
					this.city1="Sóc Trăng";
				}if(place.equals("TN")) {
					this.city1="Tây Ninh";
				}if(place.equals("TG")) {
					this.city1="Tiền Giang";
				}if(place.equals("HCM")) {
					this.city1="TP.HCM";
				}if(place.equals("TV")) {
					this.city1="Trà Vinh";
				}if(place.equals("VL")) {
					this.city1="Vĩnh Long";
				}if(place.equals("VT")) {
					this.city1="Vũng Tàu";
				}
			}
		}
	}
	public int getLotteryID() {
		return lotteryID;
	}
	public void setLotteryID(int lotteryID) {
		this.lotteryID = lotteryID;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getNgay() {
		return ngay;
	}
	public void setNgay(String ngay) {
		this.ngay = ngay;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getG8() {
		return g8;
	}
	public void setG8(String g8) {
		this.g8 = g8;
	}
	public String getG7() {
		return g7;
	}
	public void setG7(String g7) {
		this.g7 = g7;
	}
	public String getG6() {
		return g6;
	}
	public void setG6(String g6) {
		this.g6 = g6;
	}
	public String getG5() {
		return g5;
	}
	public void setG5(String g5) {
		this.g5 = g5;
	}
	public String getG4() {
		return g4;
	}
	public void setG4(String g4) {
		this.g4 = g4;
	}
	public String getG3() {
		return g3;
	}
	public void setG3(String g3) {
		this.g3 = g3;
	}
	public String getG2() {
		return g2;
	}
	public void setG2(String g2) {
		this.g2 = g2;
	}
	public String getG1() {
		return g1;
	}
	public void setG1(String g1) {
		this.g1 = g1;
	}
	public String getgDB() {
		return gDB;
	}
	public void setgDB(String gDB) {
		this.gDB = gDB;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String date() throws ParseException {
		SimpleDateFormat format1=new SimpleDateFormat("yyyy-mm-dd"); 
		SimpleDateFormat format2=new SimpleDateFormat("E dd/mm/yyyy"); 
		Date date = format1.parse(ngay);
		String day= format2.format(date);
		return day;
	}
	public String getCity1() {
		return city1;
	}
	public String getUsed() {
		return used;
	}
	public void setUsed(String used) {
		this.used = used;
	}
}
