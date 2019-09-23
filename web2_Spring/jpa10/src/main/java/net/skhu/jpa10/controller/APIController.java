package net.skhu.jpa10.controller;

import net.skhu.jpa10.domain.Department;
import net.skhu.jpa10.domain.Employee;
import net.skhu.jpa10.repository.DepartmentRepository;
import net.skhu.jpa10.repository.EmployeeRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by bomi on 2019-09-23.
 */

@RestController
@RequestMapping("api")
public class APIController {

    final DepartmentRepository departmentRepository;
    final EmployeeRepository employeeRepository;

    public APIController(final DepartmentRepository departmentRepository, final EmployeeRepository employeeRepository) {
        this.departmentRepository = departmentRepository;
        this.employeeRepository = employeeRepository;
    }

    @GetMapping("employees")
    public List<Employee> employees() {
        return employeeRepository.findAll();
    }

    @GetMapping("employee/{id}")
    public Employee employee(@PathVariable("id") int id) {
        return employeeRepository.findById(id).get();
    }

    @GetMapping("departments")
    public List<Department> departments() {
        return departmentRepository.findAll();
    }
}
