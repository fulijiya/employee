package com.dyy.njupt;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

public class majorOutputDistribution {
	static HashMap<String, String> map=new HashMap<>();
    public static void main(String[] args){
    	majorOutputDistribution lc=new majorOutputDistribution();
    	map=lc.confirm("语文");
    	
    	System.out.println(map);
    }
    public static HashMap<String, String> confirm(String projectname)
    {
        //处理业务逻辑
        try
        {
            Connection conn = Dao.getConnection();
            PreparedStatement p = conn.prepareStatement("select * from project join major_output where project.project_name = ?");
            p.setString(1, projectname);      
            ResultSet rs = p.executeQuery();
            
            while(rs.next())
            {   map.put("project_name", rs.getString("project_name"));
                map.put("project_type", rs.getString("project_type"));
                map.put("project_manager", rs.getString("project_manager"));                    
            //    Dao.close(rs, p, conn);            
            }
            Dao.close(rs, p, conn);

        }
        catch(SQLException e)
        {
            e.printStackTrace();
            System.out.println("数据库连接出错");
        }
        return map;
    }
}