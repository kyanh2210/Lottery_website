package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import bean.lottery;
import bean.result;

public class LotteryDAO {
	public List<lottery> show() throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select * from[dbo].[Lottery]");
			ResultSet rs = stmt.executeQuery();
			List<lottery> listLottery=new ArrayList<>();
			while(rs.next()) {
					lottery pd=new lottery(Integer.parseInt(rs.getString(1)), rs.getString(2), rs.getString(3),
							rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
							rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11),
							rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17));
					listLottery.add(pd);
			}
			return listLottery;
		}
	}
	public int all() throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select count(*) from[dbo].[Lottery]");
			ResultSet rs = stmt.executeQuery();
			int r=0;
			if(rs.next()) {
				r=rs.getInt(1);
			}
			return r;
		}
	}
	public List<lottery> forRandom() throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select top 100 * from[dbo].[Lottery] ");
			ResultSet rs = stmt.executeQuery();
			List<lottery> listLottery=new ArrayList<>();
			while(rs.next()) {
					lottery pd=new lottery(Integer.parseInt(rs.getString(1)), rs.getString(2), rs.getString(3),
							rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
							rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11),
							rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17));
					listLottery.add(pd);
			}
			return listLottery;
		}
	}
	public List<lottery> forRandom(String place) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select top 100 * from[dbo].[Lottery] where city=? ");
			stmt.setString(1, place);
			ResultSet rs = stmt.executeQuery();
			List<lottery> listLottery=new ArrayList<>();
			while(rs.next()) {
					lottery pd=new lottery(Integer.parseInt(rs.getString(1)), rs.getString(2), rs.getString(3),
							rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
							rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11),
							rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17));
					listLottery.add(pd);
			}
			return listLottery;
		}
	}
	public List<lottery> onShow() throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select * from [dbo].[Lottery] where [ngay] BETWEEN DATEADD(day,-30,GETDATE()) AND GETDATE() AND [status]='A' order by ngay desc");
			ResultSet rs = stmt.executeQuery();
			List<lottery> listLottery=new ArrayList<>();
			while(rs.next()) {
					lottery pd=new lottery(Integer.parseInt(rs.getString(1)), rs.getString(2), rs.getString(3),
							rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
							rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11),
							rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17));
					listLottery.add(pd);
			}
			PreparedStatement stmt2 = temp.prepareStatement("update [dbo].[Lottery] set[used] ='U' where [ngay] BETWEEN DATEADD(day,-30,GETDATE()) AND GETDATE() AND [status]='A' and(used is null or used='')");
			stmt2.executeUpdate();
			return listLottery;
		}
	}
	public List<lottery> search(String characters) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select * from [dbo].[Lottery] where ngay =TRY_CAST(? AS date)  union select * from [dbo].[Lottery] where LotteryID =TRY_CAST(? AS INT)  union select * from [dbo].[Lottery] where place =? order by ngay desc");
			stmt.setString(1,characters);
			stmt.setString(2,characters);
			stmt.setString(3,characters);
			ResultSet rs = stmt.executeQuery();
			List<lottery> listLottery=new ArrayList<>();
			while(rs.next()) {
						lottery pd=new lottery(Integer.parseInt(rs.getString(1)), rs.getString(2), rs.getString(3),
								rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
								rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11),
								rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17));
						listLottery.add(pd);
			}
			return listLottery;
		}
	}
	public List<lottery> searchShow(String characters) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select * from [dbo].[Lottery] where ngay =TRY_CAST(? AS date) AND [status]='A'  union select * from [dbo].[Lottery] where LotteryID =TRY_CAST(? AS INT) AND [status]='A' union select * from [dbo].[Lottery] where place =? AND [status]='A' order by ngay desc");
			stmt.setString(1,characters);
			stmt.setString(2,characters);
			stmt.setString(3,characters);
			ResultSet rs = stmt.executeQuery();
			List<lottery> listLottery=new ArrayList<>();
			while(rs.next()) {
						lottery pd=new lottery(Integer.parseInt(rs.getString(1)), rs.getString(2), rs.getString(3),
								rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
								rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11),
								rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17));
						listLottery.add(pd);
			}
			PreparedStatement stmt2 = temp.prepareStatement("update [dbo].[Lottery] set[used] ='U' where ngay =TRY_CAST(? AS date) AND [status]='A' and(used is null or used='')"
					+ "update [dbo].[Lottery] set[used] ='U' where LotteryID =TRY_CAST(? AS INT) AND [status]='A' and(used is null or used='')"
					+ "update [dbo].[Lottery] set[used] ='U' where place =? AND [status]='A' and(used is null or used='')");
			stmt2.setString(1,characters);
			stmt2.setString(2,characters);
			stmt2.setString(3,characters);
			stmt2.executeUpdate();
			return listLottery;
		}
	}
	public List<lottery> search1(String place,String city) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select * from [dbo].[Lottery] where place=? and city=? AND [status]='A' order by ngay desc");
			stmt.setString(1,place);
			stmt.setString(2, city);
			ResultSet rs = stmt.executeQuery();
			List<lottery> listLottery=new ArrayList<>();
			while(rs.next()) {
						lottery pd=new lottery(Integer.parseInt(rs.getString(1)), rs.getString(2), rs.getString(3),
								rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
								rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11),
								rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17));
						listLottery.add(pd);
			}
			PreparedStatement stmt2 = temp.prepareStatement("update [dbo].[Lottery] set[used] ='U' where place=? and city=? AND [status]='A' and(used is null or used='')");
			stmt2.setString(1,place);
			stmt2.setString(2, city);
			stmt2.executeUpdate();
			return listLottery;
		}
	}
	public List<lottery> searchCity(String characters) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select * from [dbo].[Lottery] where city = ? AND [status]='A' order by ngay desc");
			stmt.setString(1,characters);
			ResultSet rs = stmt.executeQuery();
			List<lottery> listLottery=new ArrayList<>();
			while(rs.next()) {
						lottery pd=new lottery(Integer.parseInt(rs.getString(1)), rs.getString(2), rs.getString(3),
								rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
								rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11),
								rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17));
						listLottery.add(pd);
			}
			PreparedStatement stmt2 = temp.prepareStatement("update [dbo].[Lottery] set[used] ='U' where city=? AND [status]='A' and(used is null or used='')");
			stmt2.setString(1,characters);
			stmt2.executeUpdate();
			return listLottery;
		}
	}
	public List<lottery> searchDate(String date) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select * from [dbo].[Lottery] where ngay = ? AND [status]='A' order by ngay desc");
			stmt.setString(1,date);
			ResultSet rs = stmt.executeQuery();
			List<lottery> listLottery=new ArrayList<>();
			while(rs.next()) {
						lottery pd=new lottery(Integer.parseInt(rs.getString(1)), rs.getString(2), rs.getString(3),
								rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
								rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11),
								rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17));
						listLottery.add(pd);
			}
			PreparedStatement stmt2 = temp.prepareStatement("update [dbo].[Lottery] set[used] ='U' where  ngay = ? AND [status]='A' and(used is null or used='')");
			stmt2.setString(1,date);
			stmt2.executeUpdate();
			return listLottery;
		}
	}
	public List<lottery> search(String characters, String date) throws Exception {
		try (Connection temp =  new DBContext().getConnection()) {
			PreparedStatement stmt = temp.prepareStatement("select * from [dbo].[Lottery] where city = ? and ngay = ? AND [status]='A' order by ngay desc");
			stmt.setString(1,characters);
			stmt.setString(2,date);
			ResultSet rs = stmt.executeQuery();
			List<lottery> listLottery=new ArrayList<>();
			while(rs.next()) {
						lottery pd=new lottery(Integer.parseInt(rs.getString(1)), rs.getString(2), rs.getString(3),
								rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
								rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11),
								rs.getString(12), rs.getString(13), rs.getString(14),rs.getString(15),rs.getString(16),rs.getString(17));
						listLottery.add(pd);
			}
			PreparedStatement stmt2 = temp.prepareStatement("update [dbo].[Lottery] set[used] ='U' where city = ? and ngay = ? AND [status]='A' and(used is null or used='')");
			stmt2.setString(1,characters);
			stmt2.setString(2,date);
			stmt2.executeUpdate();
			return listLottery;
		}
	}
	public void used (int [] id) throws Exception {
		Connection conn = new DBContext().getConnection();
		String qr = "update [dbo].[Lottery] set[used] ='U' where [LotteryID] in(0";
		for(int a:id) {
			qr+=","+a;
		}
		qr+=") and(used is null or used='')";
		PreparedStatement stmt = conn.prepareStatement(qr);
		stmt.executeUpdate();
	}
	public List<result> Result(String place,String day,String num) throws Exception{
		try (Connection conn = new DBContext().getConnection()) {
			String qr="declare @2num varchar(2),@3num varchar(3),@4num varchar(4),@5num varchar(5),@6num varchar(6),@origin nvarchar(6)='"+num+"'\r\n"
					+ "if (len(@origin)>=2)begin set @2num=RIGHT(@origin,2) end\r\n"
					+ "if (len(@origin)>=3)begin set @3num=RIGHT(@origin,3) end\r\n"
					+ "if (len(@origin)>=4)begin set @4num=RIGHT(@origin,4) end\r\n"
					+ "if (len(@origin)>=5)begin set @5num=RIGHT(@origin,5) end\r\n"
					+ "if (len(@origin)>=6)begin set @6num=RIGHT(@origin,6) end\r\n"
					+ "select * from (\r\n"
					+ "select[LotteryID],'giaiDB' as prize,[place],[city],[ngay] from[dbo].[Lottery] where [giaidb] like(@6num) AND [status]='A' or [giaidb] like ('%'+@5num)union all\r\n"
					+ "select[LotteryID],'giai1'  as prize,[place],[city],[ngay] from[dbo].[Lottery] where [giai1]  like(@5num) AND [status]='A' union all\r\n"
					+ "select[LotteryID],'giai2'  as prize,[place],[city],[ngay] from[dbo].[Lottery] where [giai2]  like('%'+@5num+'%') AND [status]='A' union all\r\n"
					+ "select[LotteryID],'giai3'  as prize,[place],[city],[ngay] from[dbo].[Lottery] where [giai3]  like('%'+@5num+'%') AND [status]='A' union all\r\n"
					+ "select[LotteryID],'giai4'  as prize,[place],[city],[ngay] from[dbo].[Lottery] where [giai4]  like('%'+@5num+'%') AND [status]='A' or [city]='MB' and [giai4] like('%'+@4num+'%') union all\r\n"
					+ "select[LotteryID],'giai5'  as prize,[place],[city],[ngay] from[dbo].[Lottery] where [giai5]  like('%'+@4num+'%') AND [status]='A' union all\r\n"
					+ "select[LotteryID],'giai6'  as prize,[place],[city],[ngay] from[dbo].[Lottery] where [giai6]  like('%'+@4num+'%') AND [status]='A' or [city]='MB' and [giai6] like('%'+@3num+'%') union all\r\n"
					+ "select[LotteryID],'giai7'  as prize,[place],[city],[ngay] from[dbo].[Lottery] where [giai7]  like('%'+@3num+'%') AND [status]='A' or [city]='MB' and [giai7] like('%'+@2num+'%') union all\r\n"
					+ "select[LotteryID],'giai8'  as prize,[place],[city],[ngay] from[dbo].[Lottery] where [giai8]  like(@2num) AND [status]='A' )as table1";
			if(day!=null&&day!="") {
				qr+=" where table1.ngay='"+day+"' ";
				if(place!=null && place!="") {
					qr+=" and table1.city='"+place+"'";
				}
			}
			if((day==null||day=="")&&place!=null&&place!="") {
				qr+=" where table1.city='"+place+"'";
			}
			PreparedStatement stmt= conn.prepareStatement(qr);
			ResultSet rs = stmt.executeQuery();
			List<result> res =new ArrayList<>();
			while(rs.next()) {
				result rlt = new result(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				res.add(rlt);
			}
			return res;
		}
	}
}
