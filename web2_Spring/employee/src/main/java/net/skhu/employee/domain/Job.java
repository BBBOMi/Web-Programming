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
@Table(name = "jobs")
public class Job {

    @Id
    @GeneratedValue
    @Column(name = "jobId")
    private String id;

    @Column(name = "jobTitle")
    private String title;

    private Double minSalary;

    private Double maxSalary;

    @JsonIgnore
    @OneToMany(mappedBy = "job")
    private List<Employee> employees;

//    @JsonIgnore
//    @ManyToMany(mappedBy = "employee")
//    private List<JobHistory> jobHistories;
}
