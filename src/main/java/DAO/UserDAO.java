package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import bean.countStatusUsers;
import bean.user;
import context.DBContext;

public class UserDAO {
	public List<user> listUser() throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="select* from[dbo].[Account]";
			PreparedStatement stmt = temp.prepareStatement(qr);
			ResultSet rs =stmt.executeQuery();
			List<user> userList=new ArrayList<>();
			while(rs.next()) {
				user user= new user(rs.getInt(1), rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getDate(11), rs.getDate(12),rs.getString(13),rs.getString(14));
				userList.add(user);
			}
			return userList;
		}
	}
	public int all() throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select count(*) from[dbo].[Account]");
			ResultSet rs = stmt.executeQuery();
			int r=0;
			if(rs.next()) {
				r=rs.getInt(1);
			}
			return r;
		}
	}
	public int allN() throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select count(*) from[dbo].[Account] where [user_role]=1");
			ResultSet rs = stmt.executeQuery();
			int r=0;
			if(rs.next()) {
				r=rs.getInt(1);
			}
			return r;
		}
	}
	public int allA() throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select count(*) from[dbo].[Account] where [user_role]=2");
			ResultSet rs = stmt.executeQuery();
			int r=0;
			if(rs.next()) {
				r=rs.getInt(1);
			}
			return r;
		}
	}
	public List<user> listUser(String name) throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="select* from[dbo].[Account] where [user_name] like N'%"+name+"%'or [user_mail] like N'%"+name+"%' or [user_number] like N'%"+name+"%' ";
			PreparedStatement stmt = temp.prepareStatement(qr);
			ResultSet rs =stmt.executeQuery();
			List<user> userList=new ArrayList<>();
			while(rs.next()) {
				user user= new user(rs.getInt(1), rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getDate(11), rs.getDate(12),rs.getString(13),rs.getString(14));
				userList.add(user);
			}
			return userList;
		}
	}
	public List<user> listUserFull() throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="select* from[dbo].[Account]";
			PreparedStatement stmt = temp.prepareStatement(qr);
			ResultSet rs =stmt.executeQuery();
			List<user> userList=new ArrayList<>();
			while(rs.next()) {
				user user= new user(rs.getInt(1), rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getDate(11), rs.getDate(12),rs.getString(13),rs.getString(14));
				userList.add(user);
			}
			return userList;
		}
	}
	public void updateByUser(int id,String name,String fullname,String address,String phone) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="update [dbo].[Account] set [user_nickname]=?,[user_name]=?,[user_address]=?,[user_number]=? where [user_id]=?\r\n";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1,name);
			stmt.setString(2, fullname);
			stmt.setString(3, address);
			stmt.setString(4, phone);
			stmt.setInt(5, id);
			stmt.executeUpdate();
			String qr2 ="update [dbo].[Account] set used='U' where [user_id]=?\r\n";
			PreparedStatement stmt2 = temp.prepareStatement(qr2);
			stmt2.setInt(1, id);
			stmt2.executeUpdate();
			
		}
	}
	public user Account(String user) throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="select* from[dbo].[Account] where[user_nickname] = ? and [confirm]='1'";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1,user);
			ResultSet rs =stmt.executeQuery();
			user user1 = null;
			while(rs.next()) {
				user1= new user(rs.getInt(1), rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getDate(11), rs.getDate(12),rs.getString(13),rs.getString(14));
			}
			return user1;
		}
	}
	public int newUser() throws SQLException, Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="INSERT INTO [dbo].[Account]([user_role]) VALUES (1);\r\n"
			+ "SELECT [user_id] AS LastID FROM [dbo].[Account] WHERE [user_id] = @@Identity;\r\n";
			PreparedStatement stmt = temp.prepareStatement(qr);
			ResultSet rs =stmt.executeQuery();
			int id=0;
			while(rs.next()) {
				id=rs.getInt(1);
			}
			return id;
		}
	}
	public boolean checkName(String name) throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="select* from[dbo].[Account] where[user_nickname] =? and [confirm]='1'";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1, name);
			ResultSet rs =stmt.executeQuery();
			if(rs.next()) {
				return false;
			}else {
				return true;
			}
		}
	}
	public boolean checkName(String name,int id) throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="select* from[dbo].[Account] where[user_nickname] = ? and [user_id]<> ?";

			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1, name);
			stmt.setInt(2, id);
			ResultSet rs =stmt.executeQuery();
			if(rs.next()) {
				return false;
			}else {
				return true;
			}
		}
	}
	public boolean checkSignName(String name) throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="select* from[dbo].[Account] where[user_nickname] =?";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1, name);
			ResultSet rs =stmt.executeQuery();
			if(rs.next()) {
				return false;
			}else {
				return true;
			}
		}
	}
	
	public boolean checkSignEmail(String email) throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="select* from[dbo].[Account] where[user_mail] =? and [confirm]='1'";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1, email);
			ResultSet rs =stmt.executeQuery();
			if(rs.next()) {
				return false;
			}else {
				return true;
			}
		}
	}
	public boolean checkNamePass(String name,String pass) throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="select * from[dbo].[Account] where[user_nickname] =? and[user_password]=? and [confirm]='1' and [user_status]='normal'";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1, name);
			stmt.setString(2, pass);
			ResultSet rs =stmt.executeQuery();
			if(rs.next()) {
				return true;
			}else {
				return false;
			}
		}
	}
	public boolean checkNamePass2(String name,String pass) throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="select * from[dbo].[Account] where[user_nickname] =? and[user_password]=? and [confirm]='1'";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1, name);
			stmt.setString(2, pass);
			ResultSet rs =stmt.executeQuery();
			if(rs.next()) {
				return true;
			}else {
				return false;
			}
		}
	}
	public String checkStatus(String name,String pass) throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="select user_status from[dbo].[Account] where[user_nickname] =? and[user_password]=? and [confirm]='1'";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1, name);
			stmt.setString(2, pass);
			ResultSet rs =stmt.executeQuery();
			String st="";
			while(rs.next()) {
				st=rs.getString(1);
			}
			return st;
		}
	}
	public boolean checkNamePassGF(String name,String pass) throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="select * from[dbo].[Account] where[user_nickname] =? and[user_password]=? and [user_status]='normal'";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1, name);
			stmt.setString(2, pass);
			ResultSet rs =stmt.executeQuery();
			if(rs.next()) {
				return true;
			}else {
				return false;
			}
		}
	}
	public boolean checkMail(String mail) throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="select* from[dbo].[Account] where[user_mail] =? and [confirm]='1'";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1, mail);
			ResultSet rs =stmt.executeQuery();
			if(rs.next()) {
				return false;
			}else {
				return true;
			}
		}
	}
	public void signUp(String nickname, String email, String password) throws SQLException, Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="INSERT INTO [dbo].[Account]([user_nickname],[user_mail],[user_password],[user_role],[user_status],[confirm]) VALUES ('"+nickname+"','"+email+"','"+password+"',1,'normal','1')";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.executeUpdate();
		}
	}
	public void signUpGF(String nickname, String email, String password) throws SQLException, Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="INSERT INTO [dbo].[Account]([user_nickname],[user_mail],[user_password],[user_role],[user_status]) VALUES ('"+nickname+"','"+email+"','"+password+"',1,'normal')";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.executeUpdate();
		}
	}
	public user Users(int id) throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="select* from[dbo].[Account] where[user_id] =?";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setInt(1, id);
			ResultSet rs =stmt.executeQuery();
			user user = null;
			while(rs.next()) {
				user= new user(rs.getInt(1), rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getDate(11), rs.getDate(12),rs.getString(13),rs.getString(14));
			}
			return user;
		}
	}
	public int getRole(String username) throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="select* from[dbo].[Account] where[user_nickName] =?";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1,username);
			ResultSet rs =stmt.executeQuery();
			int role=0;
			while(rs.next()) {
				role=rs.getInt(5);
			}
			return role;
		}
	}
	public List<user> statusUsers(String name) throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="select* from [dbo].[Account] where[user_status] =?";
			if(name.equals("admin")) {
				qr="select * from [dbo].[Account] where [user_role] = 2 or [user_status] =?";
			}
			if(name.equals("subscriber")) {
				qr="select * from [dbo].[Account] where [user_role] = 1 or [user_status] =?";
			}
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1, name);
			ResultSet rs =stmt.executeQuery();
			List<user> userList=new ArrayList<>();
			while(rs.next()) {
				user user= new user(rs.getInt(1), rs.getString(2),rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getDate(11), rs.getDate(12),rs.getString(13),rs.getString(14));
				userList.add(user);
			}
			return userList;
		}
	}
	public countStatusUsers status() throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="select (select count([user_status]) from [dbo].[Account] )as [all],(select count([user_role]) from [dbo].[Account] where [user_role]=2)as[admin],\r\n"
					+ "(select count([user_role]) from [dbo].[Account] where [user_role]=1)as [subscriber],(select count([user_status]) from [dbo].[Account] where [user_status]='suspend')as [suspend],\r\n"
					+ "(select count([user_status]) from [dbo].[Account] where [user_status]='ban')as [ban]";
			PreparedStatement stmt = temp.prepareStatement(qr);
			ResultSet rs =stmt.executeQuery();
			countStatusUsers status = null;
			while(rs.next()){
				status=new countStatusUsers(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5));
			}
			return status;
		}
	}
	public void deleteUser(int id) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="Delete from[dbo].[Account] where [user_id]= ? and [user_role]<>2 and used is null \r\n";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setInt(1, id);
			stmt.executeUpdate();
		}
	}
	public void updateStatusUser(String status,int id) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="update [dbo].[Account] set [user_status]=? where [user_id]=?\r\n";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1, status);
			stmt.setInt(2, id);
			stmt.executeUpdate();
		}
	}
	public void updatePass(String pass,String email) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="update [dbo].[Account] set [user_password]=? where [user_mail]=? and [confirm]=1\r\n";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1, pass);
			stmt.setString(2, email);
			stmt.executeUpdate();
		}
	}
	public void updatePassByUser(String pass,String user) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="update [dbo].[Account] set [user_password]=? where [user_nickname]=?\r\n";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1, pass);
			stmt.setString(2, user);
			stmt.executeUpdate();
			String qr2 ="update [dbo].[Account] set used='U' where [user_nickname]=?\r\n";
			PreparedStatement stmt2 = temp.prepareStatement(qr2);
			stmt2.setString(1, user);
			stmt2.executeUpdate();
		}
	}
	public void updateUser(user user, String date1, String date2) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String updateP="";
			if(user.getUser_pass()!="") {
				updateP=",[user_password]='"+user.getUser_pass()+"'";
			}
			String qr ="update [dbo].[Account] set [user_nickname]=?,[user_mail]=?"+updateP+",[user_role]=?,[user_name]=?,[user_address]=?,[user_number]=?,[user_status]=?,[reason]=?,[day_suspend]=cast( ? as date) ,[day_unsuspend]=cast( ? as date),[confirm]='1' where [user_id]=?\r\n";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1, user.getUser_nickname());
			stmt.setString(2, user.getUser_mail());
			stmt.setInt(3, user.getRole());
			stmt.setString(4, user.getUser_name());
			stmt.setString(5, user.getAddress());
			stmt.setString(6, user.getUser_number());
			
			
			if(user.getStatus().equals("S")) {
				stmt.setString(7, "suspend");
				stmt.setString(8, user.getReason());
				stmt.setString(9, date1);
				stmt.setString(10, date2);
			}else {
				stmt.setString(8,"");
				stmt.setNull(9, java.sql.Types.DATE);
				stmt.setNull(10, java.sql.Types.DATE);
			}
			if(user.getStatus().equals("B")) {
				stmt.setString(7, "ban");
			}
			if(user.getStatus().equals("N")) {
				stmt.setString(7, "normal");
			}
			stmt.setInt(11, user.getId());
			stmt.executeUpdate();
		}
	}
	public void updateStatusUser(String status,int id, String date1, String date2) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="update [dbo].[Account] set [user_status]=?, [day_suspend]=cast( ? as date) ,[day_unsuspend]=cast( ? as date)   where [user_id]=?\r\n";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1, status);
			stmt.setString(2, date1);
			stmt.setString(3, date2);
			stmt.setInt(4, id);
			stmt.executeUpdate();
		}
	}
	public void deleteUsers(List<Integer> listId) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr="Begin tran\r\n";
			for(int id:listId) {
				qr+="Delete from[dbo].[Account] where [user_id]="+id+"and [user_role]<>2 and used is null \r\n";
			}
			qr+="commit tran";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.executeUpdate();
		}
	}
	public void used(String id) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr="update [dbo].[Account] set used ='U' where [user_id]="+id+" and used is null \r\n";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.executeUpdate();
		}
	}
	public void updateRoleUsers(List<Integer> listId, String role) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr="Begin tran\r\n";
			for(int id:listId) {
				qr+="update [dbo].[Account] set [user_role] ="+role+" where [user_id]="+id+"\r\n";
			}
			qr+="COMMIT TRAN";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.executeUpdate();
		}
	}
}
