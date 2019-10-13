package net.skhu.book2.domain;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

/**
 * Created by bomi on 2019-10-02.
 */

@Getter
@Setter
@EqualsAndHashCode(exclude = {"category", "publisher"})
@ToString(exclude = {"category", "publisher"})
@Entity
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String title;

    private String author;

    @ManyToOne
    @JoinColumn(name = "categoryId")
    private Category category;

    private int price;

    @ManyToOne
    @JoinColumn(name = "publisherId")
    private Publisher publisher;
}
