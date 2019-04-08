package lecture02.exam;

import lecture02.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by bomi on 2019-04-08.
 */
public class UserDAO {
    public static List<User> findAll() throws Exception {
        String sql = "SELECT u.*, d.departmentName FROM user u JOIN department d ON u.departmentId = d.id";
        try(Connection con = DB.getConnection("student1");
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery()) {
            List<User> list = new ArrayList<>();
            while(rs.next()) {
                User user = new User();
                //`user.setId(rs.getInt("id"));
                user.setUserid(rs.getString("userid"));
                //user.setPassword(rs.getString("password"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                //user.setDepartmentId(rs.getInt("departmentId"));
                user.setDepartmentName(rs.getString("departmentName"));
                // user.setEnabled(rs.getInt("enabled") == 1? );
                user.setUserType(rs.getString("userType"));

                list.add(user);
            }

            return list;
        }
    }
}
