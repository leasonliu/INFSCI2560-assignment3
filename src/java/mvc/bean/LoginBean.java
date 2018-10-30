/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mvc.bean;

import java.io.Serializable;

/**
 * @author eason
 */
public class LoginBean extends Object implements Serializable {

    private String username;
    private String password;

    public LoginBean() {
        username = new String();
        password = new String();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getPassword() {return password;}
    public void setPassword(String password) {this.password = password;}    
}
