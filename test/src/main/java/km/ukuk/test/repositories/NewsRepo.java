package km.ukuk.test.repositories;

import km.ukuk.test.models.News;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NewsRepo extends JpaRepository<News, Integer> {
}
