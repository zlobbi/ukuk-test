package km.ukuk.test.controllers;

import javassist.NotFoundException;
import km.ukuk.test.dto.UserDTO;
import km.ukuk.test.servises.NewsService;
import km.ukuk.test.servises.UserService;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
        UserDTO user = null;
        try {
            user = userService.getById(id);
            var userLastNews = newsService.getUserLastNews(id);
            if (userLastNews.size() != 0) {
                model.addAttribute("userProfile", user);
                model.addAttribute("userLastNews", userLastNews);
                return "profile";
            }
        } catch (NotFoundException e) {
            System.out.println(e.getMessage());
        }
        return "redirect:/forbidden";
    }

    @PostMapping("/edit-about-me/{id}")
    public String editAbMe(@RequestParam("abMe") String abMe, @PathVariable("id") int id,
                           RedirectAttributes attributes) {
        var isUpdated = userService.updateAbMe(abMe, id);
        attributes.addFlashAttribute("update", isUpdated);
        return "redirect:/users/" + id;

    }

    @GetMapping("/forbidden")
    public String forbidden() {
        return "forbidden";
    }

}
