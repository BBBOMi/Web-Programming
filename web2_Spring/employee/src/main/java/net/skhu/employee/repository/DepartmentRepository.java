package net.skhu.employee.repository;

import net.skhu.employee.domain.Department;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by bomi on 2019-10-13.
 */
public interface DepartmentRepository extends JpaRepository<Department, Long> {
}
