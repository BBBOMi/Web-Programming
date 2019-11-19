package net.skhu.jpa11.api;

import net.skhu.jpa11.domain.Student;
import net.skhu.jpa11.repository.StudentRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by bomi on 2019-10-30.
 */

@RestController
@RequestMapping("api2")
public class API2Controller {

    final StudentRepository studentRepository;

    public API2Controller(final StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    // 이름이 '고은별'인 학생 찾기
    @GetMapping("test1")
    public List<Student> test1() {
        return studentRepository.findByName("고은별");
    }

    // 성이 '김'인 학생 찾기
    @GetMapping("test2")
    public List<Student> test2() {
        return studentRepository.findByNameStartsWith("김");
    }

    // '국어국문학' 학과에 속한 학생 찾기
    @GetMapping("test3")
    public List<Student> test3() {
        return studentRepository.findByDepartmentName("국어국문학");
    }

    // 이름이 '국어'로 시작하는 학과에 속한 학생 찾기
    @GetMapping("test4")
    public List<Student> test4() {
        return studentRepository.findByDepartmentNameStartsWith("국어");
    }

    // 이름 오름차순으로 전체 학생 조회
    @GetMapping("test5")
    public List<Student> test5() {
        return studentRepository.findAllByOrderByName();
    }

    // 이름 내림차순으로 전체 학생 조회
    @GetMapping("test6")
    public List<Student> test6() {
        return studentRepository.findAllByOrderByNameDesc();
    }

    // 해당 아이디를 가진 학과에 속한 학생 조회
    @GetMapping("test7")
    public List<Student> test7() {
        return studentRepository.findByDepartmentIdOrderByNameDesc(1);
    }
}
