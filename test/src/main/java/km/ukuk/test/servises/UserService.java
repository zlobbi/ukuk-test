package km.ukuk.test.servises;

import javassist.NotFoundException;
import km.ukuk.test.dto.UserAddForm;
import km.ukuk.test.dto.UserDTO;
import km.ukuk.test.models.Role;
import km.ukuk.test.models.User;
import km.ukuk.test.repositories.UserRepo;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.security.Principal;
import java.time.LocalDate;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class UserService {
    private UserRepo userRepo;
    private PasswordEncoder encoder;

    public void addPrincipal(Model model, Principal principal) {
        if (principal != null) {
            User user = null;
            try {
                user = userRepo.findByLogin(principal.getName()).orElseThrow(() -> new NotFoundException("User not found!"));
            } catch (NotFoundException e) {
                SecurityContextHolder.clearContext();
                e.printStackTrace();
            }
            var userDTO = UserDTO.from(user);
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

    public int addNewUser(UserAddForm form) {
        var user = User.builder()
                .name(form.getName())
                .surname(form.getSurname())
                .birthdate(LocalDate.parse(form.getBirthdate()))
                .login(form.getLogin())
                .password(encoder.encode(form.getPassword()))
                .address(form.getAddress())
                .roles(Set.of(Role.valueOf(form.getRole())))
                .image("no-image-profile.png")
                .build();
        return userRepo.save(user).getId();
    }

    public void addAddAdminParams(Model model, Principal principal) {
        if (principal != null) {
            User user = null;
            try {
                user = userRepo.findByLogin(principal.getName()).orElseThrow(() -> new NotFoundException("User not found!"));
            } catch (NotFoundException e) {
                SecurityContextHolder.clearContext();
                e.printStackTrace();
            }
            var userDTO = UserDTO.from(user);
            if (userDTO.getRole() == Role.ADMIN) {
                var users = userRepo.findAllByIdIsNot(user.getId()).stream().map(UserDTO::from).collect(Collectors.toList());
                model.addAttribute("users", users);
            }
        }
    }
}
