package com.dyy.njupt;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class loginReg {

    public static boolean register(String name,String password)
    {
        //处理业务逻辑
        try
        {
            Connection conn = Dao.getConnection();
            PreparedStatement p = conn.prepareStatement("insert into test values (?, ?)");
            p.setString(1, name);
            p.setString(2, password);
        
            p.executeUpdate();
            Dao.close(p, conn);
            return true;
        }
        catch(SQLException e)
        {
            e.printStackTrace();
            System.out.println("数据库连接出错");
        }
        return false;
    }
}