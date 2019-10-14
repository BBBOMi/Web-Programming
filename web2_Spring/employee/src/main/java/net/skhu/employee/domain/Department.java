package net.skhu.employee.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

/**
 * Created by bomi on 2019-10-13.
 */

@Getter
@Setter
@Entity
@Table(name = "departments")
public class Department {

    @Id
    @GeneratedValue
    @Column(name = "departmentId")
    private long id;

    @Column(name = "departmentName")
    private String name;

    @OneToOne
    @JoinColumn(name = "managerId")
    private Employee employee;

    @ManyToOne
    @JoinColumn(name = "locationId")
    private Location location;

    @JsonIgnore
    @OneToMany(mappedBy = "department")
    private List<Employee> employees;

//    @JsonIgnore
//    @ManyToMany(mappedBy = "employeeId")
//    private List<JobHistory> jobHistories;
}
