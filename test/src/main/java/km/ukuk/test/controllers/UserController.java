package km.ukuk.test.controllers;

import javassist.NotFoundException;
import km.ukuk.test.dto.UserAddForm;
import km.ukuk.test.dto.UserDTO;
import km.ukuk.test.models.Role;
import km.ukuk.test.models.User;
import km.ukuk.test.servises.NewsService;
import km.ukuk.test.servises.UserService;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
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
        userService.addAddAdminParams(model, principal);
        try {
            UserDTO user = userService.getById(id);
            model.addAttribute("userProfile", user);
            var userLastNews = newsService.getUserLastNews(id);
            if (userLastNews.size() != 0) {
                model.addAttribute("userLastNews", userLastNews);
            }
            return "profile";
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

    @GetMapping("/add-user")
    public String addUser(Model model, Principal principal) {
        userService.addPrincipal(model, principal);
        model.addAttribute("userForm", new UserAddForm());
        model.addAttribute("roles", Role.values());
        return "add-user";
    }

    @PostMapping("/add-user")
    public String addUser(@Valid UserAddForm form, BindingResult validation, RedirectAttributes attributes) {
        attributes.addFlashAttribute("userForm", form);
        if (validation.hasErrors()) {
            attributes.addFlashAttribute("errors", validation.getFieldErrors());
            return "redirect:/add-user";
        }

        if (userService.isUserExists(form.getLogin())) {
            attributes.addFlashAttribute("exists", form.getLogin());
            return "redirect:/add-user";
        }

        var userId = userService.addNewUser(form);

        return "redirect:/users/" + userId;
    }

    @GetMapping("/user/{id}/update")
    public String updateUser(Model model, Principal principal, @PathVariable("id") int id) {
        userService.addPrincipal(model, principal);
        try {
            var user = userService.getById(id);
            model.addAttribute("roles", Role.values());
            model.addAttribute("userUp", user);
            return "update-user";
        } catch (NotFoundException e) {
            e.printStackTrace();
        }
        return "redirect:/forbidden";
    }

    @PostMapping("/update-user/{userId}")
    public String updateUser(@PathVariable("userId") int id, @Valid UserAddForm form,
                             RedirectAttributes attributes, BindingResult result) {
        if (result.hasErrors()) {
            attributes.addFlashAttribute("errors", result.getFieldErrors());
            return "redirect:/user/" + id + "/update";
        }
        var userDTO = userService.updateUser(id, form);
        if (userDTO != null)
            return "redirect:/users/" + userDTO.getId();
        return null;
    }

}
