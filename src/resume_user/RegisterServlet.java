package resume_user;

import resume_user.LoginServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

public class RegisterServlet extends HttpServlet {
    private String JDBC_DRIVER;
    private String DB_URL;

    private String USER;
    private String PASS;

    private Connection conn;
    private Statement stmt;


    public RegisterServlet() {
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



    public void register(User user) {

        String username = user.getUsername();
        String password = user.getPassword();
        try{
            // 注册 JDBC 驱动
            Class.forName("com.mysql.jdbc.Driver");
            int i = 0;
            // 打开链接
            System.out.println("正在注册...");
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
            System.out.print("done!");
            // 执行查询
//            stmt = conn.createStatement();
            String sql;
            sql = "insert into User values (?, ?)";
            PreparedStatement stmt;
            try {
                stmt = (PreparedStatement) conn.prepareStatement(sql);
                stmt.setString(1, username);
                stmt.setString(2, password);
                stmt.executeUpdate();
                stmt.close();
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            // 展开结果集数据库

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
            }catch(SQLException se2){ }// 什么都不做
            try{
                if(conn!=null) conn.close();
            }catch(SQLException se){
                se.printStackTrace();
            }
        }
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username);
        System.out.println(password);
        User user = new User(username, password);
        System.out.println(user == null);

        if(user != null) {
            LoginServlet lg_sev = new LoginServlet();
            this.register(user);
            lg_sev.login(user);
        }else {
            System.out.println("用户不存在");
        }
        response.sendRedirect("index_login.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}