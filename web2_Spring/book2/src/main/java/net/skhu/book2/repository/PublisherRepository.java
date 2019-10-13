package net.skhu.book2.repository;

import net.skhu.book2.domain.Publisher;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by bomi on 2019-10-13.
 */
public interface PublisherRepository extends JpaRepository<Publisher, Integer> {
}
