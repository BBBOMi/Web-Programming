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
public class StudentDAO2 {
    public static List<Student> findAll() throws Exception {
        String sql = "SELECT s.*, d.departmentName " +
                "FROM student s LEFT JOIN department d " +
                "ON s.departmentId = d.id";

        try(Connection con = DB.getConnection("student1");
            PreparedStatement pstmt = con.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery()) {
            ArrayList<Student> list = new ArrayList<>();

            while(rs.next()) {
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setStudentNumber(rs.getString("studentNumber"));
                student.setName(rs.getString("name"));
                student.setYear(rs.getInt("year"));
                student.setDepartmentId(rs.getInt("departmentId"));
                student.setDepartmentName(rs.getString("departmentName"));
                list.add(student);
            }
            return list;
        }
    }

    public static List<Student> findByName(String name) throws Exception {
        String sql = "SELECT s.*, d.departmentName " +
                "FROM student s LEFT JOIN department d " +
                "ON s.departmentId = d.id " +
                "WHERE s.name LIKE ?";

        try(Connection con = DB.getConnection("student1");
            PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setString(1, name + "%");
            try(ResultSet rs = pstmt.executeQuery()) {
                ArrayList<Student> list = new ArrayList<>();
                while(rs.next()) {
                    Student student = new Student();
                    student.setId(rs.getInt("id"));
                    student.setStudentNumber(rs.getString("studentNumber"));
                    student.setName(rs.getString("name"));
                    student.setYear(rs.getInt("year"));
                    student.setDepartmentId(rs.getInt("departmentId"));
                    student.setDepartmentName(rs.getString("departmentName"));
                    list.add(student);
                }
                return list;
            }
        }
    }
}
