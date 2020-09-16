package km.ukuk.test.controllers;

import km.ukuk.test.servises.NewsService;
import km.ukuk.test.servises.UserService;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;

@Controller
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class UserController {

    private UserService userService;
    private NewsService newsService;

    @GetMapping("/login")
    public String loginPage(@RequestParam(required = false, defaultValue = "false") Boolean error, Model model) {
        model.addAttribute("error", error);
        return "sign-in";
    }

    @GetMapping("/users/{id}")
    public String profile(Model model, Principal principal, @PathVariable("id") int id) {
        userService.addPrincipal(model, principal);
        var user = userService.getById(id);
        var userLastNews = newsService.getUserLastNews(id);
        model.addAttribute("user", user);
        model.addAttribute("userLastNews", userLastNews);
        return "profile";
    }

}
