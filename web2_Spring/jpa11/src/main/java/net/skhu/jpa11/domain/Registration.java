package net.skhu.jpa11.domain;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by bomi on 2019-10-13.
 */

@Getter
@Setter
@EqualsAndHashCode(exclude = {"student", "course"})
@ToString(exclude = {"student", "course"})
@Entity
// 테이블 이름과 엔터티 이름이 같지 않을 경우 명시
@Table(name = "register")
public class Registration {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "studentId")
    private Student student;

    @ManyToOne
    @JoinColumn(name = "courseId")
    private Course course;

    // nullable
    private Integer grade;

    private Date createDate;
}
