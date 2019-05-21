package resume_user;

import java.io.IOException;
import java.sql.*;
import java.util.Queue;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;


public class InfoListServlet extends HttpServlet {
    private String JDBC_DRIVER;
    private String DB_URL;

    private String USER;
    private String PASS;

    private Connection conn;
    private Statement stmt;

    public InfoListServlet() {
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

    public void setInfo(User user) {
        String user_name = User.cur_user.getUsername();
        String name = user.info_list.personal_info.getName();
        String gender = user.info_list.personal_info.getGender();
        String email = user.info_list.personal_info.getEmail();
        String phone = user.info_list.personal_info.getPhone();
        String birthday = user.info_list.personal_info.getBirthday();
        String city = user.info_list.personal_info.getCity();
        String website = user.info_list.personal_info.getWebsite();
        String school = user.info_list.edu_info.getSchool();
        String major = user.info_list.edu_info.getMajor();
        String language = user.info_list.skill_info.getLanguage();
        String frameworks = user.info_list.skill_info.getFrameworks();
        String award = user.info_list.getAwards();
        String introduce = user.info_list.getIntroduce();
        String others = user.info_list.getOthers();
        System.out.println(user_name+name+gender+email+phone+birthday+city+website+school+major+language+frameworks+award+introduce+others);

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
            sql = "insert into list_info values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt;
            try {
                stmt = (PreparedStatement) conn.prepareStatement(sql);
                stmt.setString(1, name);
                stmt.setString(2, gender);
                stmt.setString(3, email);
                stmt.setString(4, phone);
                stmt.setString(5, birthday);
                stmt.setString(6, city);
                stmt.setString(7, website);
                stmt.setString(8, school);
                stmt.setString(9, major);
                stmt.setString(10, language);
                stmt.setString(11, frameworks);
                stmt.setString(12, award);
                stmt.setString(13, introduce);
                stmt.setString(14, others);
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
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String birthday = request.getParameter("birthday");
        String city = request.getParameter("city");
        String website = request.getParameter("website");
        String school = request.getParameter("school");
        String major = request.getParameter("major");
        String language = request.getParameter("language");
        String frameworks = request.getParameter("frameworks");
        String award = request.getParameter("award");
        String introduce = request.getParameter("introduce");
        String others = request.getParameter("others");
//        System.out.println(name+gender+password+email+birthday+city+website+school+major+language+frameworks+award+introduce+others);
//        this.setInfo(name, gender, password, email, birthday, city, website, school, major, language, frameworks, award, introduce, others);

        User.cur_user.info_list.personal_info.setName(name);
        User.cur_user.info_list.personal_info.setGender(gender);
        User.cur_user.info_list.personal_info.setEmail(email);
        User.cur_user.info_list.personal_info.setPhone(phone);
        User.cur_user.info_list.personal_info.setBirthday(birthday);
        User.cur_user.info_list.personal_info.setCity(city);
        User.cur_user.info_list.personal_info.setWebsite(website);
        User.cur_user.info_list.edu_info.setSchool(school);
        User.cur_user.info_list.edu_info.setMajor(major);
        User.cur_user.info_list.skill_info.setLanguage(language);
        User.cur_user.info_list.skill_info.setFrameworks(frameworks);
        User.cur_user.info_list.setAwards(award);
        User.cur_user.info_list.setIntroduce(introduce);
        User.cur_user.info_list.setOthers(others);


        this.setInfo(User.cur_user);

        response.sendRedirect("index_login.jsp");
    }

    protected void doGet(HttpServletRequest request                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         , HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("infolist.jsp");
    }
}
