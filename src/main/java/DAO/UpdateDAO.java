package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import bean.lottery;
import context.DBContext;

public class UpdateDAO {
	public void delete(String id) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("Delete from[dbo].[Lottery] where lotteryID IN(?) and used is null");
			 stmt.setString(1, id);
			stmt.executeUpdate();
		}
	}
	public void delete2(List<Integer> listId) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr="Begin tran\r\n";
			for(int id:listId) {
				qr+="Delete from[dbo].[Lottery] where lotteryID="+id+"and used is null\r\n";
			}
			qr+="COMMIT TRAN";
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.executeUpdate();
		}
	}
	public List<Integer> update() throws SQLException, Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="INSERT INTO [dbo].[Lottery]([user]) VALUES ('');\r\n"
			+ "SELECT [LotteryID] AS LastID FROM [dbo].[Lottery] WHERE [LotteryID] = @@Identity;\r\n";
			PreparedStatement stmt = temp.prepareStatement(qr);
			ResultSet rs =stmt.executeQuery();
			List<Integer> id=new ArrayList<>();
			while(rs.next()) {
						int idTemp=rs.getInt(1);
						id.add(idTemp);
			}
			return id;
		}
	}
	public void update2(lottery lott) throws SQLException, Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			String qr ="UPDATE [dbo].[Lottery]\r\n"
					+ "SET [user]= ?, [status]=? , ngay=Cast(? as date), place=?, city=?, giai8=?, giai7=?, giai6=?, giai5=?, giai4=?, giai3=?, giai2=?, giai1=?, giaidb=?, [description]=? \r\n"
					+ "WHERE [LotteryID] ="+lott.getLotteryID();
			PreparedStatement stmt = temp.prepareStatement(qr);
			stmt.setString(1, lott.getUser());
			stmt.setString(2, lott.getStatus());
			stmt.setString(3, lott.getNgay());
			stmt.setString(4, lott.getCity());
			stmt.setString(5, lott.getPlace());
			stmt.setString(6, lott.getG8());
			stmt.setString(7, lott.getG7());
			stmt.setString(8, lott.getG6());
			stmt.setString(9, lott.getG5());
			stmt.setString(10, lott.getG4());
			stmt.setString(11, lott.getG3());
			stmt.setString(12, lott.getG2());
			stmt.setString(13, lott.getG1());
			stmt.setString(14, lott.getgDB());
			stmt.setString(15, lott.getDescription());
			
			stmt.executeUpdate();
		}
	}
}
