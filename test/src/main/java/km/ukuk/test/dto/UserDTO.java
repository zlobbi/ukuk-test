package km.ukuk.test.dto;

import km.ukuk.test.models.Role;
import km.ukuk.test.models.User;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.time.format.DateTimeFormatter;
import java.util.List;

@Data
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@Builder
public class UserDTO {
    private int id;
    private String name;
    private String surname;
    private String login;
    private String birthdate;
    private String abMe;
    private String image;
    private String address;
    private Role role;
    private int newsCount;

    public static UserDTO from(User user) {
        return builder()
                .id(user.getId())
                .name(user.getName())
                .surname(user.getSurname())
                .login(user.getLogin())
                .birthdate(user.getBirthdate().format(DateTimeFormatter.ofPattern("dd.MM.yyyy")))
                .abMe(user.getAbMe())
                .image(user.getImage())
                .address(user.getAddress())
                .role(user.getRoles().iterator().next())
                .newsCount(user.getNews().size())
                .build();
    }
}
