package net.skhu.jpa11.repository;

import net.skhu.jpa11.domain.Student;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by bomi on 2019-10-13.
 */
public interface StudentRepository extends JpaRepository<Student, Integer> {
}
