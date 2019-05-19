package resume_user;

import java.sql.Connection;
import java.sql.Statement;

public class User {
    public static User cur_user;

    private String username; // 用户名
    private String password; // 密码


    private String JDBC_DRIVER;
    private String DB_URL;

    private String USER;
    private String PASS;

    private Connection conn;
    private Statement stmt;


    User(String username, String password) {
        this.username = username;
        this.password = password;
    }


    public String getUsername() {
        return this.username;
    }

    public String getPassword() {
        return this.password;
    }

    public static void setCurUser(User cur_user) {
        User.cur_user = cur_user;
    }

    public static User getCurUser() {
        return User.cur_user;
    }

    public static boolean isLogin() {
        if (User.cur_user == null) {
            return false;
        } else {
            return true;
        }
    }
}

