package km.ukuk.test.servises;

import km.ukuk.test.dto.NewsDTO;
import km.ukuk.test.repositories.NewsRepo;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class NewsService {
    private NewsRepo newsRepo;

    public Page<NewsDTO> getTodayNews(LocalDate date, Pageable pageable) {
        return newsRepo.findAllByDate(date, pageable).map(NewsDTO::from);
    }

    public List<NewsDTO> getLastArchiveNews(LocalDate date) {
        Pageable pageable = PageRequest.of(0, 3, Sort.by(Sort.Direction.DESC, "id"));
        return newsRepo.findAllByDateBefore(date, pageable).stream().map(NewsDTO::from).collect(Collectors.toList());
    }

    public NewsDTO getById(int id) {
        var news = NewsDTO.from(newsRepo.findById(id).get());
        String principal = SecurityContextHolder.getContext().getAuthentication().getName();
        if (principal.equals(news.getUser().getLogin())) news.setAuthor(true);
        return news;
    }

    public Page<NewsDTO> getArchiveNews(LocalDate now, Pageable pageable) {
        return newsRepo.findAllByDateBefore(now, pageable).map(NewsDTO::from);
    }

    public List<NewsDTO> getUserLastNews(int id) {
        Pageable pageable = PageRequest.of(0, 3, Sort.by(Sort.Direction.DESC, "id"));
        return newsRepo.findAllByUserId(id, pageable).stream().map(NewsDTO::from).collect(Collectors.toList());
    }
}
