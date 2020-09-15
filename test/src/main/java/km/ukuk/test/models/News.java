package km.ukuk.test.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@Table(name = "news")
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class News {

    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column
    private String title;

    @Column
    private String descr;

    @Column
    private String image;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
}
