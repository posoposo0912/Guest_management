package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.CalenderData;

public class CalenderDAO {

	public CalenderData connectDB(){
		CalenderData calenderData = null;

		Connection con = null;

		try{
			//現状ローカル
			//Todo:DB2への対応、外部公開、パス設定
			con = DriverManager.getConnection("jdbc:mysql://localhost/Calender", "root", "");

			Statement stm = con.createStatement();
            String sql = "select date,name,content from calender";
            ResultSet rs = stm.executeQuery(sql);

            while(rs.next()){
            	int date = rs.getInt("date");
                String name = rs.getString("name");
                String content = rs.getString("content");
                calenderData = new CalenderData(date, name,content);
            }
            return calenderData;

        } catch (SQLException e) {
            System.out.println("MySQLに接続できませんでした。");
            return null;
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                   return null;
                }
            }

        }
	}
	}

