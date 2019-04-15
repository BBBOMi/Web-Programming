package lecture02.jdbc1;

import lecture02.DB;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by bomi on 2019-04-15.
 */
public class StudentDAO3 {
    public static Student createStudent(ResultSet rs) throws SQLException {
        Student student = new Student();
        student.setId(rs.getInt("id"));
        student.setStudentNumber(rs.getString("studentNumber"));
        student.setName(rs.getString("name"));
        student.setDepartmentId(rs.getInt("departmentId"));
        student.setYear(rs.getInt("year"));
        student.setDepartmentName(rs.getString("departmentName"));

        return student;
    }

    public static List<Student> findAll() throws Exception {
        String sql = "SELECT s.*, d.departmentName "
                + "FROM student s LEFT JOIN department d "
                + "ON s.departmentId = d.id";

        try(Connection con = DB.getConnection("student1");
            PreparedStatement pstmt = con.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery()) {
            ArrayList<Student> list = new ArrayList<>();
            while(rs.next()) {
                list.add(createStudent(rs));
            }
            return list;
        }
    }

    public static List<Student> findByDepartmentId(int departmentId) throws Exception {
        String sql = "SELECT s.*, d.* "
                + "FROM student s LEFT JOIN department d "
                + "ON s.departmentId = d.id "
                + "WHERE s.departmentId = ?";
        try(Connection con = DB.getConnection("student1");
        PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setInt(1, departmentId);
            try(ResultSet rs = pstmt.executeQuery()) {
                ArrayList<Student> list = new ArrayList<>();
                while(rs.next()) {
                    list.add(createStudent(rs));
                }
                return list;
            }
        }
    }
}
