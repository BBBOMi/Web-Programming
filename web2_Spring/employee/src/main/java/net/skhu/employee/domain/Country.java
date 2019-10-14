package net.skhu.employee.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

/**
 * Created by bomi on 2019-10-13.
 */

@Getter
@Setter
@Entity
@Table(name = "countries")
public class Country {

    @Id
    @GeneratedValue
    @Column(name = "countryId")
    private String id;

    @Column(name = "countryName")
    private String name;

    @ManyToOne
    @JoinColumn(name = "regionId")
    private Region region;
}
