package km.ukuk.test.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;
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

}
