package km.ukuk.test.servises;

import javassist.NotFoundException;
import km.ukuk.test.dto.UserDTO;
import km.ukuk.test.models.News;
import km.ukuk.test.models.Role;
import km.ukuk.test.models.User;
import km.ukuk.test.repositories.UserRepo;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.junit4.SpringRunner;

import java.time.LocalDate;
import java.util.*;

import static org.mockito.Mockito.doReturn;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class UserServiceTest {
    @Autowired
    private UserService userService;

    @Autowired
    private PasswordEncoder encoder;

    @MockBean
    private UserRepo userRepository;

    private User user;


    @Before
    public void fillUserTest() {

        Set<Role> roles = new HashSet<>();
        roles.add(Role.ADMIN);
        List<News> newsList = new ArrayList<>();

        var news = News.builder().id(1).user(user).build();
        newsList.add(news);
        user = User.builder()
                .id(1)
                .roles(roles)
                .login("zlobbi")
                .password(encoder.encode("admin"))
                .birthdate(LocalDate.now())
                .news(newsList)
                .build();

    }

    @Test
    public void findUserByIdTest() throws NotFoundException {
        doReturn(Optional.of(user)).when(userRepository).findById(1);
        Assert.assertEquals(UserDTO.from(user), userService.getById(1));
    }

    @Test
    public void updateAboutMeTestWhenAbIsNotBlank() {
        doReturn(Optional.of(user)).when(userRepository).findById(1);
        var result = userService.updateAbMe("Not blank", 1);
        Assert.assertTrue(result);
    }

    @Test
    public void updateAboutMeTestWhenAbIsBlank() {
        var result = userService.updateAbMe("", 1);
        Assert.assertFalse(result);
    }
}
