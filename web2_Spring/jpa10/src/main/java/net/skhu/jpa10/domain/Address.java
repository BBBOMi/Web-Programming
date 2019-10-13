package net.skhu.jpa10.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

/**
 * Created by bomi on 2019-09-25.
 */

@Entity
public class Address {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;
    String phone;
    String address;

    @JsonIgnore
    /*
    @OneToOne, @ManyToOne -> fetch property default value는 FetchType.EAGER
    @OneToMany, @ManyToMany -> fetch property default value는 FetchType.LAZY
     */
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "employeeId")
    Employee employee;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }
}
