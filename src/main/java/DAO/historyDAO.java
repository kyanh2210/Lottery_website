package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.history;
import context.DBContext;

public class historyDAO {
	public void delete(int[]id) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="Delete from[dbo].[History] where id_his IN (";
			for(int i=0;i<id.length-1;i++) {
				qr+=id[i]+" , ";
			}
			qr+=id[id.length-1]+")";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.executeUpdate();
		}
	}
	public void addHis(String user,String num, String day_check,String day,String place) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr="insert into [dbo].[History] ([id_userHis],[number],[day_check],[day],[place])values((select cast((select [user_id] from [dbo].[Account]"
					+ " where [user_nickname]='"+user+"')as int)),";
			if(num!="") {
				qr+="'"+num+"',";
			}else {
				qr+="null,";
			}if(day_check!="") {
				qr+="'"+day_check+"',";
			}else {
				qr+="null,";
			}if(day!="") {
				qr+="'"+day+"',";
			}else {
				qr+="null,";
			}if(place!="") {
				qr+="'"+place+"')";
			}else {
				qr+="null)";
			}
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.executeUpdate();
			String qr2 ="update [dbo].[Account] set used='U' where [user_nickname]=?\r\n";
			PreparedStatement stmt2 = temp.prepareStatement(qr2);
			stmt2.setString(1, user);
			stmt2.executeUpdate();
		}
	}
	public List<history> getHis(String user) throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select * from [dbo].[History] where [id_userHis]=(select cast((select [user_id] from [dbo].[Account] where [user_nickname]=?)as int))");
			stmt.setString(1, user);
			ResultSet rs = stmt.executeQuery();
			List<history> his = new ArrayList<>();
			while(rs.next()) {
				history tempHis = new history(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
				his.add(tempHis);
			}
			return his;
		}
	}
	public List<history> getHis() throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select * from [dbo].[History]");
			ResultSet rs = stmt.executeQuery();
			List<history> his = new ArrayList<>();
			while(rs.next()) {
				history tempHis = new history(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
				his.add(tempHis);
			}
			return his;
		}
	}
	public List<history> getHis1(int id) throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select * from [dbo].[History] where [id_userHis]=?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			List<history> his = new ArrayList<>();
			while(rs.next()) {
				history tempHis = new history(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
				his.add(tempHis);
			}
			return his;
		}
	}
	public List<history> getHis1(String id) throws Exception{
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select * from [dbo].[History] where place =?");
			stmt.setString(1, id);
			ResultSet rs = stmt.executeQuery();
			List<history> his = new ArrayList<>();
			while(rs.next()) {
				history tempHis = new history(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
				his.add(tempHis);
			}
			return his;
		}
	}
}
