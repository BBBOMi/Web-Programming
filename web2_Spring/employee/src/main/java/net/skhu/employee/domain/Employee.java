package net.skhu.employee.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Created by bomi on 2019-10-13.
 */

@Getter
@Setter
@Entity
@Table(name = "Employees")
public class Employee {
    @Id
    @GeneratedValue
    @Column(name = "employeeId")
    private long id;

    private String firstName;

    private String lastName;

    private String email;

    private String phoneNumber;

    private Date hireDate;

    @ManyToOne
    @JoinColumn(name = "jobId")
    private Job job;

    private double salary;

    private Float commissionPct;

    // TODO : JPA 셀프조인 방법 공부
//    @JsonIgnore
////    @OneToMany
//    @JoinColumn(name = "managerId")
//    private Employee manager;

//    @ManyToOne
//    @JoinColumn(name = "employeeId")
//    private Employee managerId;
//
//    @OneToMany(mappedBy = "managerId", cascade = CascadeType.ALL)
//    private List<Employee> members;


    @ManyToOne
    @JoinColumn(name = "departmentId")
    private Department department;

//    @JsonIgnore
//    @OneToMany(mappedBy = "employee")
//    private List<JobHistory> jobHistories;

}
