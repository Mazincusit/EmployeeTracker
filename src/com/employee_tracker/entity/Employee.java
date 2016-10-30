package com.employee_tracker.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
@Table(name = "employee")
@Data @ToString @NoArgsConstructor
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "first_name")
    @NotEmpty @Size(min = 1)
    private String firstName;

    @Column(name = "last_name")
    @Size(min = 1)
    private String lastName;

    @Column(name = "position")
    private String position;

    @Column(name = "email")
    @NotEmpty @Email
    private String email;

}
