package km.ukuk.test.repositories;

import km.ukuk.test.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepo extends JpaRepository<User, Integer> {

    Optional<User> findByLogin(String login);

    List<User> findAllByIdIsNot(int id);
}
