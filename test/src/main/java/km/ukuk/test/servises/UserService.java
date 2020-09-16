package km.ukuk.test.servises;

import km.ukuk.test.dto.UserDTO;
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
            var user = UserDTO.from(userRepo.findByLogin(principal.getName()));
            model.addAttribute("user", user);
        }
    }

    public UserDTO getById(int i) {
        return UserDTO.from(userRepo.findById(i).get());
    }

    public boolean updateAbMe(String abMe, int id) {
        if (!abMe.isBlank()) {
            var user = userRepo.findById(id).get();
            user.setAbMe(abMe);
            userRepo.save(user);
            return true;
        }
        return false;

    }
}
