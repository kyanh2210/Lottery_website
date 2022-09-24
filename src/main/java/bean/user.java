package bean;

import java.util.Date;

public class user {
	private int id;
	private String user_nickname;
	private String user_mail;
	private String user_pass;
	private int role;
	private String user_name;
	private String address;
	private String user_number;
	private String status;
	private String reason;
	private Date date_suspend;
	private Date date_unSuspend; 
	private String confirm;
	private String used;
	public user(int id, String user_nickname,String user_mail, String user_pass, int role, String user_name, String address,
			String user_number, String status, String reason, Date date_suspend, Date date_unSuspend,String used) {
		super();
		this.id = id;
		this.user_nickname = user_nickname;
		this.user_mail = user_mail;
		this.user_pass = user_pass;
		this.role = role;
		this.user_name = user_name;
		this.address = address;
		this.user_number = user_number;
		this.status = status;
		this.reason = reason;
		this.date_suspend = date_suspend;
		this.date_unSuspend = date_unSuspend;
		this.setUsed(used);
	}
	public user(int id, String user_nickname,String user_mail, String user_pass, int role, String user_name, String address,
			String user_number, String status, String reason, Date date_suspend, Date date_unSuspend, String confirm,String used) {
		super();
		this.id = id;
		this.user_nickname = user_nickname;
		this.user_mail = user_mail;
		this.user_pass = user_pass;
		this.role = role;
		this.user_name = user_name;
		this.address = address;
		this.user_number = user_number;
		this.status = status;
		this.reason = reason;
		this.date_suspend = date_suspend;
		this.date_unSuspend = date_unSuspend;
		this.confirm=confirm;
		this.setUsed(used);
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUser_nickname() {
		return user_nickname;
	}
	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}
	public String getUser_pass() {
		return user_pass;
	}
	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUser_number() {
		return user_number;
	}
	public void setUser_number(String user_number) {
		this.user_number = user_number;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public Date getDate_suspend() {
		return date_suspend;
	}
	public void setDate_suspend(Date date_suspend) {
		this.date_suspend = date_suspend;
	}
	public Date getDate_unSuspend() {
		return date_unSuspend;
	}
	public void setDate_unSuspend(Date date_unSuspend) {
		this.date_unSuspend = date_unSuspend;
	}

	public String getUser_mail() {
		return user_mail;
	}

	public void setUser_mail(String user_mail) {
		this.user_mail = user_mail;
	}

	public String getConfirm() {
		return confirm;
	}

	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	public String getUsed() {
		return used;
	}
	public void setUsed(String used) {
		this.used = used;
	}
	
}
