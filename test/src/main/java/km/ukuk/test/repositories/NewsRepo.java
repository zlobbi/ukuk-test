package km.ukuk.test.repositories;

import km.ukuk.test.models.News;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;

@Repository
public interface NewsRepo extends JpaRepository<News, Integer> {

    Page<News> findAllByDate(LocalDate date, Pageable pageable);

    Page<News> findAllByDateBefore(LocalDate date, Pageable pageable);
}
