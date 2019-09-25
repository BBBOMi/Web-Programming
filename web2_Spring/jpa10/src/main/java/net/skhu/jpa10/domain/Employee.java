package net.skhu.jpa10.domain;

import javax.persistence.*;

/**
 * Created by bomi on 2019-09-23.
 */

@Entity
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;
    String name;

    /*
    * 외래키가 포함된 객체에(여기선 외래키 - departmentId, 객체 - Employee)
    * 외래키의 객체 멤버변수(Department department)를 구현 하는 것이 기본
    */
    // Employee : Department = N : 1 -> @ManyToOne annotation이 붙는다
    @ManyToOne
    // 소속 관계는 외래키로 표현(name property는 외래키 칼럼 이름 값)
    @JoinColumn(name = "departmentId")
    Department department;

    @OneToOne(mappedBy = "employee")
    Address address;

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

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }
}
