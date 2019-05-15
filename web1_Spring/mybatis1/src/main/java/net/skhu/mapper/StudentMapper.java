package net.skhu.mapper;

import net.skhu.dto.Student;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by bomi on 2019-05-15.
 */

@Mapper
public interface StudentMapper {
    Student findOne(int id);
    Student findByStudentNumber(String studentNumber);
    List<Student> findAll();
    void insert(Student student);
    void update(Student student);
    void delete(int id);
}
