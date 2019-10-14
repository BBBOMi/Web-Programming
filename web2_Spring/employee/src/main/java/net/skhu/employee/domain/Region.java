package net.skhu.employee.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

/**
 * Created by bomi on 2019-10-13.
 */

@Getter
@Setter
@Entity
@Table(name = "regions")
public class Region {

    @Id
    @GeneratedValue
    @Column(name = "regionId")
    private long id;

    @Column(name = "regionName")
    private String name;

    @JsonIgnore
    @OneToMany(mappedBy = "region")
    private List<Country> countries;
}
