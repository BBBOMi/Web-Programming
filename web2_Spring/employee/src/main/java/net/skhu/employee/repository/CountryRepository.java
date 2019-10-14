package net.skhu.employee.repository;

import net.skhu.employee.domain.Country;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by bomi on 2019-10-13.
 */
public interface CountryRepository extends JpaRepository<Country, String> {
}
