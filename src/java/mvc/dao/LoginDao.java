/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.dao;

import mvc.bean.LoginBean;
import mvc.util.DBConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.Statement;

/**
 *
 * @author Leason
 */
public class LoginDao {
    
    public String authenticateUser(LoginBean loginBean){
        String userName = loginBean.getUsername();
        String password = loginBean.getPassword();
        
        String userNameDB = "";
        String passwordDB = "";
        // connection
        try {
            Connection conn = DBConnection.createConnection();
                
            String sql = "SELECT username, password FROM userinfo";
            Statement st = conn.createStatement();
            ResultSet rs = null;
            rs = st.executeQuery(sql);
         
            while(rs.next()){
                userNameDB = rs.getString("username");
                passwordDB = rs.getString("password");
                
                if(userName.equals(userNameDB) && password.equals(passwordDB)){
                    return "Success";
                }
                
            }
            
            rs.close();
            st.close();

        } catch (SQLException ex){
            ex.printStackTrace();
        }
        
        return "Invalid User Name or Password!";    
    }
    
    public String register(LoginBean loginBean){
        String userName = loginBean.getUsername();
        String password = loginBean.getPassword();
        
        // connection
        try {
            Connection conn = DBConnection.createConnection();
                
            String insertTableSQL = "insert into userinfo values " + "(?,?)";
            PreparedStatement preparedStatement = conn.prepareStatement(insertTableSQL);
            preparedStatement.setString(1, userName);
            preparedStatement.setString(2, password);
            // execute insert SQL stetement
            int res = preparedStatement.executeUpdate();
          
            if(res > 0){
                return "Success";
            }
            
            preparedStatement.close();

        } catch (SQLException ex){
            ex.printStackTrace();
        }
        
        return "Sign up Failed!";    
    }
    
}
