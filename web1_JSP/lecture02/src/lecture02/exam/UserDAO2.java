package lecture02.exam;

import lecture02.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by bomi on 2019-04-15.
 */
public class UserDAO2 {
    public static User createUser(ResultSet rs) throws Exception {
            User user = new User();
            user.setUserid(rs.getString("userid"));
            user.setName(rs.getString("name"));
            user.setEmail(rs.getString("email"));
            user.setDepartmentName(rs.getString("departmentName"));
            user.setUserType(rs.getString("userType"));
        return user;
    }

    public static List<User> findByName(String name) throws Exception {
        String sql = "SELECT u.*, d.departmentName "
        + "FROM user u LEFT JOIN department d "
        + "ON u.departmentId = d.id "
        + "WHERE u.name LIKE ?";
        try(Connection conn = DB.getConnection("student1");
            PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, name + "%");
            try(ResultSet rs = pstmt.executeQuery()) {
                List<User> list = new ArrayList<>();
                while(rs.next()) {
                    list.add(createUser(rs));
                }
                return list;
            }
        }
    }

    public static List<User> findByDepartmentId(int departmentId) throws Exception {
        String sql = "SELECT u.*, d.departmentName "
                + "FROM user u LEFT JOIN department d "
                + "ON u.departmentId = d.id "
                + "WHERE u.departmentId = ?";

        try(Connection conn = DB.getConnection("student1");
        PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, departmentId);
            try(ResultSet rs = pstmt.executeQuery()) {
                List<User> list = new ArrayList<>();
                while(rs.next()) {
                    list.add(createUser(rs));
                }
                return list;
            }
        }
    }
}
