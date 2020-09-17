package km.ukuk.test.dto;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.time.LocalDate;

@Data
public class UserAddForm {

    @Size(min = 5, message = "Min symbols for title 5!")
    private String name = "";

    @Size(min = 5, message = "Min symbols for text 5!")
    private String surname = "";

    @Pattern(regexp = "^([0-9]{4}[-/]?((0[13-9]|1[012])[-/]?(0[1-9]|[12][0-9]|30)|(0[13578]|1[02])[-/]?31|02[-/]?(0[1-9]|1[0-9]|2[0-8]))|([0-9]{2}(([2468][048]|[02468][48])|[13579][26])|([13579][26]|[02468][048]|0[0-9]|1[0-6])00)[-/]?02[-/]?29)$", message = "birthdate should be in date format.")
    private String birthdate = "";

    @Size(min = 4, message = "Login should contains min 4 symbols!")
    private String login = "";

    @Size(min = 4, message = "Password should contains min 4 symbols!")
    private String password = "";

    @Size(min = 5, message = "Address should contain min 5 symbols!")
    private String address = "";

    @NotBlank(message = "Choose role for user")
    private String role;
}
