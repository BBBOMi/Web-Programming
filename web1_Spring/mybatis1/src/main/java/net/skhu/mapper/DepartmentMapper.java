package net.skhu.mapper;

import net.skhu.dto.Department;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * Created by bomi on 2019-05-15.
 */

@Mapper
public interface DepartmentMapper {
    List<Department> findAll();
}
