package net.skhu.jpa11.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.List;

/**
 * Created by bomi on 2019-10-13.
 */

@Getter
@Setter
@ToString(exclude = {"students", "professors", "courses"})
@EqualsAndHashCode(exclude = {"students", "professors", "courses"})
@Entity
public class Department {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "departmentName")
    private String name;

    @OneToMany(mappedBy = "department")
    @JsonIgnore
    private List<Student> students;

    @OneToMany(mappedBy = "department")
    @JsonIgnore
    private List<Professor> professors;

    @OneToMany(mappedBy = "department")
    @JsonIgnore
    private List<Course> courses;
}
