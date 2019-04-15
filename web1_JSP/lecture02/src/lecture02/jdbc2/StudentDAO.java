package lecture02.jdbc2;

import lecture02.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by bomi on 2019-04-15.
 */
public class StudentDAO {
    public static List<Student> findAll(int currentPage, int pageSize) throws Exception {
        String sql = "SELECT s.*, d.departmentName "
                + "FROM student s LEFT JOIN department d "
                + "ON s.departmentId = d.id "
                + "LIMIT ?, ?";
        try(Connection conn = DB.getConnection("student1");
            PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, (currentPage - 1) * pageSize);
            pstmt.setInt(2, pageSize);

            try(ResultSet rs = pstmt.executeQuery()) {
                List<Student> list = new ArrayList<>();
                while(rs.next()) {
                    Student student = new Student();
                    student.setId(rs.getInt("id"));
                    student.setStudentNumber(rs.getString("studentNumber"));
                    student.setName(rs.getString("name"));
                    student.setDepartmentId(rs.getInt("departmentId"));
                    student.setYear(rs.getInt("year"));
                    student.setDepartmentName(rs.getString("departmentName"));
                    list.add(student);
                }
                return list;
            }
        }
    }

    public static int count() throws Exception {
        String sql = "SELECT COUNT(*) FROM student";
        try(Connection con = DB.getConnection("student1");
        PreparedStatement pstmt = con.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery()) {
            if(rs.next()) return rs.getInt(1);
        }
        return 0;
    }
}
