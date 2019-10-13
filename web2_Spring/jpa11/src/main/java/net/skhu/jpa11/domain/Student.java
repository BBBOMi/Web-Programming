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
@EqualsAndHashCode(exclude = {"department", "registrations"})
@ToString(exclude = {"department", "registrations"})
@Entity
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String studentNumber;

    private String name;

    @ManyToOne
    @JoinColumn(name = "departmentId")
    private Department department;

    private int year;

    @OneToMany(mappedBy = "student")
    @JsonIgnore
    private List<Registration> registrations;
}
