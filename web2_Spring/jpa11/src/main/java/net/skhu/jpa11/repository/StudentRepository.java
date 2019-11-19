package net.skhu.jpa11.repository;

import net.skhu.jpa11.domain.Student;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by bomi on 2019-10-13.
 */
public interface StudentRepository extends JpaRepository<Student, Integer> {
    List<Student> findByName(String name);
    List<Student> findByNameStartsWith(String name);
    List<Student> findByDepartmentName(String name);
    List<Student> findByDepartmentNameStartsWith(String name);

    List<Student> findAllByOrderByName();
    List<Student> findAllByOrderByNameDesc();
    List<Student> findByDepartmentIdOrderByNameDesc(int id);
}
