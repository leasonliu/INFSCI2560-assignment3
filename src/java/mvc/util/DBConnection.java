package mvc.util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author eason
 */
public class DBConnection {
    public static Connection createConnection(){
        Connection conn = null;
        
        String connectionURL = "jdbc:derby://localhost:1527/yuxuanliu";
        String username = "IS2560";
        String password = "IS2560";
        
        try{
            try{
               Class.forName("org.apache.derby.jdbc.ClientDriver");
            } catch (ClassNotFoundException e){
                e.printStackTrace();
            }
            conn = DriverManager.getConnection(connectionURL, username, password);
        } catch (Exception e){
            e.printStackTrace();
        }
        return conn;              
    }
}
