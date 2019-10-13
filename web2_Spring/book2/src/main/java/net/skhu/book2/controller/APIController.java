package net.skhu.book2.controller;

import net.skhu.book2.domain.Book;
import net.skhu.book2.domain.Category;
import net.skhu.book2.domain.Publisher;
import net.skhu.book2.repository.BookRepository;
import net.skhu.book2.repository.CategoryRepository;
import net.skhu.book2.repository.PublisherRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by bomi on 2019-10-02.
 */

@RestController
@RequestMapping("api")
public class APIController {

    final BookRepository bookRepository;
    final CategoryRepository categoryRepository;
    final PublisherRepository publisherRepository;

    public APIController(final BookRepository bookRepository,
                         final CategoryRepository categoryRepository,
                         final PublisherRepository publisherRepository) {
        this.bookRepository = bookRepository;
        this.categoryRepository = categoryRepository;
        this.publisherRepository = publisherRepository;
    }

    @GetMapping("books")
    public List<Book> getBooks() {
        return bookRepository.findAll();
    }

    @GetMapping("book/{id}")
    public Book book(@PathVariable("id")int id) {
        return bookRepository.findById(id).get();
    }

    @GetMapping("categories")
    public List<Category> categories() {
        return categoryRepository.findAll();
    }

    @GetMapping("category/{id}")
    public Category category(@PathVariable("id")int id) {
        return categoryRepository.findById(id).get();
    }

    @GetMapping("category/{id}/books")
    public List<Book> getBooksOfCategoryId(@PathVariable(value = "id")int id) {
        return categoryRepository.findById(id).get().getBooks();
    }

    @GetMapping("publishers")
    public List<Publisher> publishers() {
        return publisherRepository.findAll();
    }

    @GetMapping("publisher/{id}")
    public Publisher publisher(@PathVariable("id")int id) {
        return publisherRepository.findById(id).get();
    }
}
