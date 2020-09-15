package km.ukuk.test.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;
import java.util.Set;

@Data
@Table(name = "users")
@Entity
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column
    private String name;

    @Column
    private String surname;

    @Column
    private LocalDate birthDate;

    @Column
    private String login;

    @Column
    private String password;

    @Column
    private String abMe;

    @Column
    private String address;

    @Column
    @Builder.Default
    private boolean enabled = true;

    @ElementCollection(targetClass = Role.class, fetch = FetchType.EAGER)
    @CollectionTable(name = "user_roles", joinColumns = @JoinColumn(name = "user_id"))
    @Enumerated(EnumType.STRING)
    private Set<Role> roles;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
    private List<News> news;

}
