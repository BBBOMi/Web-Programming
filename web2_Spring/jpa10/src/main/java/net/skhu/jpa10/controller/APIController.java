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

    /**
     * employee의 목록 조회
     * @return  employee의 전체목록
     */
    @GetMapping("employees")
    public List<Employee> employees() {
        return employeeRepository.findAll();
    }

    /**
     * 특정 id의 employee 조회
     * @param id
     * @return Employee 객체
     */
    @GetMapping("employee/{id}")
    public Employee employee(@PathVariable("id") int id) {
        return employeeRepository.findById(id).get();
    }

    /**
     * department 목록 조회
     * @return  department의 전체 목록
     */
    @GetMapping("departments")
    public List<Department> departments() {
        return departmentRepository.findAll();
    }

    /**
     * 해당 department에 소속 되어 있는 employee 목롤 조회
     * @param id department의 고유 id값
     * @return department에 소속 되어 있는 employee의 목록
     */
    @GetMapping("department/{id}/employees")
    public List<Employee> departmentEmployees(@PathVariable("id") int id) {
        Department department = departmentRepository.findById(id).get();
        return department.getEmployees();
    }
}
