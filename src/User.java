import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;

public class User {
    private int id;
    private String name; // 姓名
    private String password; // 密码
    private int age; // 年龄
    private String birthday; // 生日
    private String gender; //性别
    private String phone; // 电话号码
    private String email; // 邮箱
    private String city; // 城市
    private String desc; // 个人简介
    private String school; // 学校
    private String major; // 专业
    private String skill; // 技能
    private String prize; // 奖项
    private String image; // 图片
    private String homepage; // 个人主页

    private String JDBC_DRIVER;
    private String DB_URL;

    private String USER;
    private String PASS;

    private Connection conn;
    private Statement stmt;


    User(int id, String name, String password, int age, String birthday, String gender, String phone, String email, String city, String desc, String school, String major, String skill, String prize, String image, String homepage) {
        this.connect();
        this.id = id;
        this.name = name;
        this.password = password;
        this.age = age;
        this.birthday = birthday;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.city = city;
        this.desc = desc;
        this.school = school;
        this.major = major;
        this.skill = skill;
        this.prize = prize;
        this.image = image;
        this.homepage = homepage;
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


    // 查询
    public void select(String username) {

        try{
            // 注册 JDBC 驱动
            Class.forName("com.mysql.jdbc.Driver");

            // 打开链接
            System.out.println("连接数据库...");
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
            // 执行查询
            stmt = conn.createStatement();
            String sql;
            sql = "SELECT * FROM User WHERE name = " + "'" +username + "'";
            System.out.println(sql);
            ResultSet rs = stmt.executeQuery(sql);

            // 展开结果集数据库
            while(rs.next()){
                // 通过字段检索

                int id  = rs.getInt(1);
                String name = rs.getString(2);
                String password = rs.getString(3);
                int age = rs.getInt(4);
                String birthday = rs.getString(5);
                String gender = rs.getString(6);
                String phone = rs.getString(7);
                String email = rs.getString(8);
                String city = rs.getString(9);
                String desc = rs.getString(10);
                String school = rs.getString(11);
                String major = rs.getString(12);
                String skill = rs.getString(13);
                String prize = rs.getString(14);
                String image = rs.getString(15);
                String homepage = rs.getString(16);

                // 输出数据
                System.out.print(id + name + password + age + birthday + gender + phone + email + city + desc + school + major + skill + prize + image + homepage);
                System.out.print("\n");


            }

            rs.close();
            stmt.close();
            conn.close();
            // 完成后关闭

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
    }

    public void insert(User user) {

        try{
            // 注册 JDBC 驱动
            Class.forName("com.mysql.jdbc.Driver");
            int i = 0;
            // 打开链接
            System.out.println("连接数据库...");
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
            System.out.print("done!");
            // 执行查询
            System.out.println(" 实例化Statement对象...");
//            stmt = conn.createStatement();
            String sql;
            sql = "insert into User values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt;
            try {
                stmt = (PreparedStatement) conn.prepareStatement(sql);
                stmt.setInt(1, this.id);
                stmt.setString(2, this.name);
                stmt.setString(3, this.password);
                stmt.setInt(4, this.age);
                stmt.setString(5, this.birthday);
                stmt.setString(6, this.gender);
                stmt.setString(7, this.phone);
                stmt.setString(8, this.email);
                stmt.setString(9, this.city);
                stmt.setString(10, this.desc);
                stmt.setString(11, this.school);
                stmt.setString(12, this.major);
                stmt.setString(13, this.skill);
                stmt.setString(14, this.prize);
                stmt.setString(15, this.image);
                stmt.setString(16, this.homepage);
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
            }catch(SQLException se2){
            }// 什么都不做
            try{
                if(conn!=null) conn.close();
            }catch(SQLException se){
                se.printStackTrace();
            }
        }
        System.out.println("Goodbye!");
    }

    // 从前端获取数据后存入数据库
    public void setInfo() {

        this.insert(this);
    }



    public static void main(String[] args) {
        User user = new User(1, "张毕成", "980110", 21, "980316", "male", "Bee0_0@icloud.com", "Bee0_0@icloud.com", "Xi'an", "hello", "Xi'an Shiyou University", "CS", "no", "no", "no", "zbcheng.github.io");
        user.setInfo();
        user.select("张毕成");
    }

}

