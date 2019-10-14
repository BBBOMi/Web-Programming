package net.skhu.employee.api;

import jdk.nashorn.internal.objects.annotations.Getter;
import net.skhu.employee.domain.Department;
import net.skhu.employee.domain.Employee;
import net.skhu.employee.repository.DepartmentRepository;
import net.skhu.employee.repository.EmployeeRepository;
import net.skhu.employee.repository.JobRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by bomi on 2019-10-13.
 */

@RestController
@RequestMapping("apis")
public class EmployeeController {
    final EmployeeRepository employeeRepository;
    final JobRepository jobRepository;
    final DepartmentRepository departmentRepository;

    public EmployeeController(final EmployeeRepository employeeRepository,
                              final JobRepository jobRepository,
                              final DepartmentRepository departmentRepository) {
        this.employeeRepository = employeeRepository;
        this.jobRepository = jobRepository;
        this.departmentRepository = departmentRepository;
    }

    @GetMapping("employees")
    public List<Employee> getEmployees() {
        return employeeRepository.findAll();
    }

    @GetMapping("employee/{id}")
    public Employee getEmployeeById(@PathVariable("id")long id) {
        return employeeRepository.findById(id).get();
    }
}
