package lecture02.jdbc1;

import lecture02.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by bomi on 2019-04-15.
 */
public class DepartmentDAO {
    public static List<Department> findAll() throws Exception {
        String sql = "SELECT * FROM department";
        try(Connection con = DB.getConnection("student1");
            PreparedStatement pstmt = con.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery()) {
            ArrayList<Department> list = new ArrayList<>();
            while(rs.next()) {
                Department department = new Department();
                department.setId(rs.getInt("id"));
                department.setDepartmentName(rs.getString("departmentName"));
                list.add(department);
            }
            return list;
        }
    }
}
