package com.dyy.njupt;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class loginCheck {
	static String s=null;
    public static void main(String[] args){
    	loginCheck lc=new loginCheck();
    	String c=lc.check("dyy","123");
    	System.out.println(c);
    }
    public static String check(String name,String password)
    {
        //处理业务逻辑
        try
        {
            Connection conn = Dao.getConnection();
            PreparedStatement p = conn.prepareStatement("select * from userinfo where username = ? and password = ?");
            p.setString(1, name);
            p.setString(2, password);
            ResultSet rs = p.executeQuery();
            
            while(rs.next())
            {
            	s=rs.getString("department");
            //    Dao.close(rs, p, conn);            
            }
            Dao.close(rs, p, conn);

        }
        catch(SQLException e)
        {
            e.printStackTrace();
            System.out.println("数据库连接出错");
        }
        return s;
    }
}