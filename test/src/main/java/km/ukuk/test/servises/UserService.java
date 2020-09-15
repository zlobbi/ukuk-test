package km.ukuk.test.servises;

import km.ukuk.test.models.User;
import km.ukuk.test.repositories.UserRepo;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.security.Principal;

@Service
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class UserService {
    private UserRepo userRepo;

    public void addPrincipal(Model model, Principal principal) {
        if (principal != null) {
            User user = userRepo.findByLogin(principal.getName());
            model.addAttribute("userName", user.getLogin());
        }
    }
}