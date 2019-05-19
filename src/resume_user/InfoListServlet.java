package resume_user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
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

    public void setInfo(String name, String gender, String phone, String email, String birthday, String city, String website, String school, String major, String language, String frameworks, String award, String introduce, String others) {
        String username = User.getCurUser().getUsername();
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String password = request.getParameter("phone");
        String email = request.getParameter("email");
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
        System.out.println(name+gender+password+email+birthday+city+website+school+major+language+frameworks+award+introduce+others);
        this.setInfo(name, gender, password, email, birthday, city, website, school, major, language, frameworks, award, introduce, others);
        response.sendRedirect("index_login.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("infolist.jsp");
    }
}
