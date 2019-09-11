package net.skhu.mybatis_example.mapper;

import net.skhu.mybatis_example.dto.Student;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * Created by bomi on 2019-09-11.
 */

@Mapper
public interface StudentMapper {
    @Select("SELECT * FROM Student WHERE id = #{id}")
    Student findOne(@Param("id")int id);

    @Select("SELECT * FROM Student WHERE studentNumber = #{studentNumber}")
    Student findByStudentNumber(@Param("studentNumber")String studentNumber);

    @Select("SELECT s.*, d.departmentName FROM Student s LEFT JOIN department d ON s.departmentId = d.id")
    List<Student> findAll();

    @Insert("INSERT Student(studentNumber, name, departmentId, year) VALUES(#{studentNumber, #{name}, #{name}, #{departmentId}, #{year})")
    @Options(useGeneratedKeys = true, keyProperty="id")
    void insert(Student student);

    @Update("UPDATE Student SET studentNumber = #{studentNumber}, name = #{name}, departmentId = #{departmentId}, year = #{year} WHERE id = #{id}")
    void update(Student student);

    @Delete("DELETE FROM Student WHERE id = #{id}")
    void delete(int id);
}
