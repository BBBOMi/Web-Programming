package lecture02.jdbc1;

/**
 * Created by bomi on 2019-04-03.
 */
// Student 테이블에서 조회한 데이터를 채워서 전달하기 위한 객체.
// 이런 객체를 DTO(data Transfer Object)라고 부름.
public class Student {
    int id;
    String studentNumber;
    String name;
    int departmentId;
    int year;
    String departmentName;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStudentNumber() {
        return studentNumber;
    }

    public void setStudentNumber(String studentNumber) {
        this.studentNumber = studentNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }
}
