package net.skhu.jpa10.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.List;

/**
 * Created by bomi on 2019-09-23.
 */

@Entity
public class Department {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;
    String name;

    /*
        Collection-valued Association 구현은 선택
        이 객체를 조회할 때, 같이 담겨올 다른 객체의 값이 필요할 경우 구현
     */
    // mappedBy prorperty의 값은 관계의 Entity 클래스에서 @JoinColumn이 붙은 멤버변수
    @JsonIgnore
    @OneToMany(mappedBy = "department")
    List<Employee> employees;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Employee> getEmployees() {
        return employees;
    }

    public void setEmployees(List<Employee> employees) {
        this.employees = employees;
    }
}
