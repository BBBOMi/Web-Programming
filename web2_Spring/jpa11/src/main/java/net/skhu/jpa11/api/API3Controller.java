package net.skhu.jpa11.api;

import net.skhu.jpa11.domain.Student;
import net.skhu.jpa11.repository.StudentRepository;
import org.springframework.data.jpa.repository.JpaContext;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.persistence.EntityManager;
import javax.persistence.Query;

/**
 * Created by bomi on 2019-11-19.
 */

@RestController
@RequestMapping("api3")
public class API3Controller {
    private final StudentRepository studentRepository;
    private final JpaContext jpaContext;

    public API3Controller(final StudentRepository studentRepository, final JpaContext jpaContext) {
        this.studentRepository = studentRepository;
        this.jpaContext = jpaContext;
    }

    @GetMapping("jpql")
    public Object jpql(@RequestParam("sql") String sql) {
        EntityManager manager = jpaContext.getEntityManagerByManagedType(Student.class);
        Query query = manager.createQuery(sql);
        Object result = query.getResultList();
        return result;
    }
}
