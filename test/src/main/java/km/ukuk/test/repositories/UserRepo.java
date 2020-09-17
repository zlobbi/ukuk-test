package km.ukuk.test.repositories;

import km.ukuk.test.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepo extends JpaRepository<User, Integer> {

    Optional<User> findByLogin(String login);

    List<User> findAllByIdIsNot(int id);

    boolean existsByLogin(String login);

    @Modifying
    @Transactional
    @Query("update User u set u.name = ?1, u.surname = ?2, u.birthdate = ?3, u.login = ?4, u.password = ?5, u.address = ?6, u.image = ?7 where u.id = ?8")
    void updateUser(String name, String surname, LocalDate date, String login, String password, String address, String image, int id);

}
