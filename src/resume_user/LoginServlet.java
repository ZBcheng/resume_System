package resume_user;

import java.io.IOException;
import java.sql.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;


public class LoginServlet extends HttpServlet {

    private String JDBC_DRIVER;
    private String DB_URL;

    private String USER;
    private String PASS;

    private Connection conn;
    private Statement stmt;

    public LoginServlet() {
        this.connect();
    }

    public void connect() {
        // JDBC 驱动名及数据库 URL
        this.JDBC_DRIVER = "com.mysql.jdbc.Driver";
        this.DB_URL = "jdbc:mysql://localhost:3306/resume";

        // 数据库的用户名与密码，需要根据自己的设置
        this.USER = "root";
        this.PASS = "Z1998bc0316";

        this.conn = null;
        this.stmt = null;
        System.out.println("数据库连接成功");
    }


    public User getUser(String username, String password) {

        try{
            // 注册 JDBC 驱动
            Class.forName("com.mysql.jdbc.Driver");

            // 打开链接
            System.out.println("正在获取用户...");
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
            // 执行查询
            stmt = conn.createStatement();
            String sql;
            sql = "SELECT * FROM User WHERE username = " + "'" + username + "'";
            System.out.println(sql);
            ResultSet rs = stmt.executeQuery(sql);

            // 展开结果集数据库
            while(rs.next()){
                // 通过字段检索

                String user_name = rs.getString(1);
                String pass_word = rs.getString(2);
                System.out.println("pass_word: " + pass_word);
                System.out.println("password: " + password);
                if(password.equals(pass_word)) {
                    User user = new User(username, password);
                    return user;
                }else {
                    return null;
                }
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




    public void login(User user) {

        String username = user.getUsername();
        User.setCurUser(user);
//        try{
//            // 注册 JDBC 驱动
//            Class.forName("com.mysql.jdbc.Driver");
//            int i = 0;
//            // 打开链接
//            System.out.println("正在登录...");
//            conn = DriverManager.getConnection(DB_URL,USER,PASS);
//            System.out.print("done!");
//            // 执行查询
////            stmt = conn.createStatement();
//            String sql;
//            sql = "insert into loginUser values (?)";
//            PreparedStatement stmt;
//            try {
//                stmt = (PreparedStatement) conn.prepareStatement(sql);
//                stmt.setString(1, username);
//                stmt.executeUpdate();
//                stmt.close();
//                conn.close();
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//            // 展开结果集数据库
//
//        }catch(SQLException se){
//            // 处理 JDBC 错误
//            se.printStackTrace();
//        }catch(Exception e){
//            // 处理 Class.forName 错误
//            e.printStackTrace();
//        }finally{
//            // 关闭资源
//            try{
//                if(stmt!=null) stmt.close();
//            }catch(SQLException se2){ }// 什么都不做
//            try{
//                if(conn!=null) conn.close();
//            }catch(SQLException se){
//                se.printStackTrace();
//            }
//        }
        System.out.println("okkkk");
    }

    public void logout() {
        try {
            String user_name = User.cur_user.getUsername();
            User.cur_user = null;
            System.out.println("用户:" + user_name + "已退出");
        } catch (java.lang.NullPointerException e) {
            System.out.println("没有用户登录");
        }

    }

    public InfoList getInfoList(User user) {
        String username = user.getUsername();
        try{
            // 注册 JDBC 驱动
            Class.forName("com.mysql.jdbc.Driver");

            // 打开链接
            System.out.println("正在获取用户...");
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
            // 执行查询
            stmt = conn.createStatement();
            String sql;
            sql = "SELECT * FROM list_info WHERE name = " + "'" + username + "'";
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
                InfoList info_list = new InfoList(name, gender, email, phone, birthday, city, website, school, major, language, frameworks, award, introduce, others);
                return info_list;
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


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username);
        System.out.println(password);
        User user = this.getUser(username, password);
        if(user == null) {
            System.out.println("user is null");
        }
        user.info_list = this.getInfoList(user);
        System.out.println("用户名:" + user.getUsername());
        System.out.println("密码:" + user.getPassword());
        if(user != null) {
            this.login(user);
        }else {
            System.out.println("用户不存在");
        }
        System.out.println(User.cur_user);
        response.sendRedirect("index_login.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.logout();
        response.sendRedirect("index.jsp");
    }

    public static void main(String[] args) {


        LoginServlet sev = new LoginServlet();
        try {
            sev.logout();
        } catch (java.lang.NullPointerException e) {
            System.out.println(User.isLogin());
        }

//        User user = sev.getUser("张毕成", "980110");
//        System.out.println(user.getUsername());
//        System.out.println(user.getPassword());
//        sev.login(user);

    }

}
