package net.skhu.jpa10.repository;

import net.skhu.jpa10.domain.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by bomi on 2019-09-23.
 */
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

}
