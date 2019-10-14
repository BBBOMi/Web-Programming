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
@Table(name = "locations")
public class Location {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "locationId")
    private long id;

    @Column(name = "streetAddress")
    private String address;

    private String postalCode;

    private String city;

    @Column(name = "stateProvince")
    private String province;

    @ManyToOne
    @JoinColumn(name = "countryId")
    private Country country;

    @JsonIgnore
    @OneToMany(mappedBy = "location")
    private List<Department> departments;
}
