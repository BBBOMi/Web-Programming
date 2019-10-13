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
@ToString(exclude = {"department", "courses"})
@EqualsAndHashCode(exclude = {"department", "courses"})
@Entity
public class Professor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "professorName")
    private String name;

    @ManyToOne
    @JoinColumn(name = "departmentId")
    private Department department;

    @OneToMany(mappedBy = "professor")
    @JsonIgnore
    private List<Course> courses;
}
