package resume_user;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LogoutServlet extends HttpServlet{

    public void logout() {
        try {
            String user_name = User.cur_user.getUsername();
            User.cur_user = null;
            System.out.println("用户:" + user_name + "已退出");
        } catch (java.lang.NullPointerException e) {
            System.out.println("没有用户登录");
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.logout();
        response.sendRedirect("index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.logout();
        response.sendRedirect("index.jsp");
    }
}
