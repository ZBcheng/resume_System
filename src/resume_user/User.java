package resume_user;

import java.sql.*;

public class User {
    public static User cur_user;

    private String username; // 用户名
    private String password; // 密码
    public InfoList info_list;


    private String JDBC_DRIVER;
    private String DB_URL;

    private String USER;
    private String PASS;

    private Connection conn;
    private Statement stmt;


    User(String username, String password) {
        this.username = username;
        this.password = password;
        this.info_list = this.getInfoList();
        if(this.info_list == null) {
            this.info_list = new InfoList("", "", "", "", "", "", "", "", "", "", "", "", "", "");
        }
    }


    public String getUsername() {
        return this.username;
    }

    public String getPassword() {
        return this.password;
    }

    public InfoList getInfoList() {
        try{
            // 注册 JDBC 驱动
            Class.forName("com.mysql.jdbc.Driver");

            // 打开链接
            System.out.println("正在获取用户...");
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
            // 执行查询
            stmt = conn.createStatement();
            String sql;
            sql = "SELECT * FROM list_info WHERE name = " + "'" + this.getUsername() + "'";
            System.out.println(sql);
            ResultSet rs = stmt.executeQuery(sql);

            // 展开结果集数据库
            while(rs.next()){
                // 通过字段检索

                String name = rs.getString(1);
                String gender = rs.getString(2);
                String email = rs.getString(3);
                String phone = rs.getString(4);
                String birthday = rs.getString(5);
                String city = rs.getString(6);
                String website = rs.getString(7);
                String school = rs.getString(8);
                String major = rs.getString(9);
                String language = rs.getString(10);
                String frameworks = rs.getString(11);
                String award = rs.getString(12);
                String introduce = rs.getString(13);
                String others = rs.getString(14);
                InfoList infoList = new InfoList(name, gender, email, phone, birthday, city, website, school, major, language, frameworks, award, introduce, others);

                return infoList;
            }
        }catch(SQLException se){
            // 处理 JDBC 错误
            se.printStackTrace();
        }catch(Exception e){
            // 处理 Class.forName 错误
            e.printStackTrace();
        }finally{
            // 关闭资源
            try{
                if(stmt!=null) stmt.close();
            }catch(SQLException se2){
            }// 什么都不做
            try{
                if(conn!=null) conn.close();
            }catch(SQLException se){
                se.printStackTrace();
            }
        }
        System.out.println("Goodbye!");
        return null;
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

