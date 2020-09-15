package km.ukuk.test.servises;

import km.ukuk.test.models.News;
import km.ukuk.test.repositories.NewsRepo;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class NewsService {
    private NewsRepo newsRepo;

    public Page<News> getTodayNews(LocalDate date, Pageable pageable) {
        return newsRepo.findAllByDate(date, pageable);
    }

    public List<News> getLastArchiveNews(LocalDate date) {
        Pageable pageable = PageRequest.of(0, 3, Sort.by(Sort.Direction.DESC, "id"));
        return newsRepo.findAllByDateBefore(date, pageable);
    }
}
