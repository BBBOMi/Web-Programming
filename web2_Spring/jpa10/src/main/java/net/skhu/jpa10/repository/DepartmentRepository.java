package net.skhu.jpa10.repository;

import net.skhu.jpa10.domain.Department;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by bomi on 2019-09-23.
 */
public interface DepartmentRepository extends JpaRepository<Department, Integer> {
}
