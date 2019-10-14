package net.skhu.employee.repository;

import net.skhu.employee.domain.Job;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by bomi on 2019-10-13.
 */
public interface JobRepository extends JpaRepository<Job, String> {
}
