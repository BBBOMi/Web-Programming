package net.skhu.jpa11.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Created by bomi on 2019-10-13.
 */

@Getter
@Setter
@EqualsAndHashCode(exclude = {"department", "professor", "registrations"})
@ToString(exclude = {"department", "professor", "registrations"})
@Entity
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "courseName")
    private String name;

    @ManyToOne
    @JoinColumn(name = "departmentId")
    private Department department;

    private int unit;

    @ManyToOne
    @JoinColumn(name = "professorId")
    private Professor professor;

    private Date startDate;

    @OneToMany(mappedBy = "course")
    @JsonIgnore
    private List<Registration> registrations;
}
