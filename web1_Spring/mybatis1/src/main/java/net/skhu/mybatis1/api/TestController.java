package net.skhu.mybatis1.api;

import net.skhu.dto.Student;
import net.skhu.mapper.StudentMapper;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by bomi on 2019-05-15.
 */

@RestController
public class TestController {

    final StudentMapper studentMapper;

    public TestController(StudentMapper studentMapper) {
        this.studentMapper = studentMapper;
    }

    @GetMapping("")
    public List<Student> test() {
        List<Student> list = studentMapper.findAll();
        return list;
    }
}
