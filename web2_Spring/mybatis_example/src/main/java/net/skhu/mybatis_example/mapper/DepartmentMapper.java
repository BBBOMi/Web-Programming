package net.skhu.mybatis_example.mapper;

import net.skhu.mybatis_example.dto.Department;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by bomi on 2019-09-11.
 */

@Mapper
public interface DepartmentMapper {
    @Select("SELECT * FROM Department")
    List<Department> findAll();
}
