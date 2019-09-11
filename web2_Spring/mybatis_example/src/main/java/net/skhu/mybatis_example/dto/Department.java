package net.skhu.mybatis_example.dto;

/**
 * Created by bomi on 2019-09-11.
 */
public class Department {
    int id;
    String departmentName;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }
}
