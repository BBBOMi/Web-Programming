package net.skhu.employee.api;

import net.skhu.employee.domain.Department;
import net.skhu.employee.domain.Employee;
import net.skhu.employee.repository.CountryRepository;
import net.skhu.employee.repository.DepartmentRepository;
import net.skhu.employee.repository.LocationRepository;
import net.skhu.employee.repository.RegionRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by bomi on 2019-10-14.
 */

@RestController
@RequestMapping("api")
public class DepartmentController {
    final DepartmentRepository departmentRepository;
    final LocationRepository locationRepository;
    final CountryRepository countryRepository;
    final RegionRepository regionRepository;

    public DepartmentController(final DepartmentRepository departmentRepository,
                                final LocationRepository locationRepository,
                                final CountryRepository countryRepository,
                                final RegionRepository regionRepository) {
        this.countryRepository = countryRepository;
        this.departmentRepository = departmentRepository;
        this.locationRepository = locationRepository;
        this.regionRepository = regionRepository;
    }

    @GetMapping("departments")
    public List<Department> getDepartments() {
        return departmentRepository.findAll();
    }

    @GetMapping("department/{id}")
    public Department getDepartmentById(@PathVariable("id")long id) {
        return departmentRepository.findById(id).get();
    }

    @GetMapping("department/{id}/employees")
    public List<Employee> getEmployeesByDepartmentId(@PathVariable("id")long id) {
        return departmentRepository.findById(id).get().getEmployees();
    }
}
