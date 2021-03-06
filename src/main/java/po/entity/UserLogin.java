package po.entity;

import org.springframework.stereotype.Component;

import javax.persistence.*;

@Entity
//@Table(name = "user_login")
public class UserLogin {

    @Id
   // @Column(name = "userId")
   // @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer userId;

   // @Column(name = "username")
    private String username;

   // @Column(name = "password")
    private String password;

    public UserLogin() {
    }

    public UserLogin(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

	@Override
	public String toString() {
		return "UserLogin [userId=" + userId + ", username=" + username + ", password=" + password + "]";
	}
    
    
    
}
