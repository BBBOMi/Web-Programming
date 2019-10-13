package net.skhu.book2.repository;

import net.skhu.book2.domain.Book;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by bomi on 2019-10-02.
 */
public interface BookRepository extends JpaRepository<Book, Integer> {
}
