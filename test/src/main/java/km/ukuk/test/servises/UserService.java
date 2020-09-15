package km.ukuk.test.servises;

import km.ukuk.test.repositories.UserRepo;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class UserService {
    private UserRepo userRepo;
}
