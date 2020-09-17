package km.ukuk.test.servises;

import javassist.NotFoundException;
import km.ukuk.test.dto.UserAddForm;
import km.ukuk.test.dto.UserDTO;
import km.ukuk.test.models.Role;
import km.ukuk.test.repositories.UserRepo;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.security.Principal;
import java.util.List;
import java.util.stream.Collectors;

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

    public UserDTO getById(int i) throws NotFoundException {
        var user = userRepo.findById(i).orElseThrow(() -> new NotFoundException("User not found!"));
        return UserDTO.from(user);
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

    public boolean addNewUser(UserAddForm form) {
        return true;
    }

    public void addAddAdminParams(Model model, Principal principal) {
        if (principal != null) {
            var user = UserDTO.from(userRepo.findByLogin(principal.getName()));
            if (user.getRole() == Role.ADMIN) {
                var users = userRepo.findAllByIdIsNot(user.getId()).stream().map(UserDTO::from).collect(Collectors.toList());
                model.addAttribute("users", users);
            }
        }
    }
}
