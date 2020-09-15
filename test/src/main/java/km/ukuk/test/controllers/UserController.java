package km.ukuk.test.controllers;

import km.ukuk.test.servises.UserService;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;

@Controller
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class UserController {

    private UserService userService;


}
