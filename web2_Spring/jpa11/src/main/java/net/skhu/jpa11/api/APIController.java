package net.skhu.jpa11.api;

import net.skhu.jpa11.domain.*;
import net.skhu.jpa11.repository.DepartmentRepository;
import net.skhu.jpa11.repository.ProfessorRepository;
import net.skhu.jpa11.repository.StudentRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by bomi on 2019-10-13.
 */

@RestController
@RequestMapping("api")
public class APIController {
    final DepartmentRepository departmentRepository;
    final StudentRepository studentRepository;
    final ProfessorRepository professorRepository;

    public APIController(final DepartmentRepository departmentRepository,
                         final StudentRepository studentRepository,
                         final ProfessorRepository professorRepository) {
        this.departmentRepository = departmentRepository;
        this.studentRepository = studentRepository;
        this.professorRepository = professorRepository;
    }

    @GetMapping("departments")
    public List<Department> departments() {
        return departmentRepository.findAll();
    }

    @GetMapping("students")
    public List<Student> students() {
        return studentRepository.findAll();
    }

    @GetMapping("department/{id}/students")
    public List<Student> departmentStudents(@PathVariable("id") int id) {
        return departmentRepository.findById(id).get().getStudents();
    }

    @GetMapping("department/{id}/professors")
    public List<Professor> departmentProfessors(@PathVariable("id")int id) {
        return departmentRepository.findById(id).get().getProfessors();
    }

    @GetMapping("student/{id}/registrations")
    public List<Registration> studentRegistrations(@PathVariable("id")int id) {
        return studentRepository.findById(id).get().getRegistrations();
    }

    @GetMapping("student/{id}/courses")
    public List<Course> studentCourses(@PathVariable("id")int id) {
        List<Registration> registrations = studentRepository.findById(id).get().getRegistrations();
        List<Course> courses = new ArrayList<>();
        for(Registration registration : registrations) {
            courses.add(registration.getCourse());
        }
        return courses;
    }
}
