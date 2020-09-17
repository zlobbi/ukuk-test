package km.ukuk.test.servises;

import javassist.NotFoundException;
import km.ukuk.test.dto.NewsAddForm;
import km.ukuk.test.dto.NewsDTO;
import km.ukuk.test.models.News;
import km.ukuk.test.repositories.NewsRepo;
import km.ukuk.test.repositories.UserRepo;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class NewsService {
    private NewsRepo newsRepo;
    private UserRepo userRepo;

    public Page<NewsDTO> getTodayNews(LocalDate date, Pageable pageable) {
        return newsRepo.findAllByDate(date, pageable).map(NewsDTO::from);
    }

    public List<NewsDTO> getLastArchiveNews(LocalDate date) {
        Pageable pageable = PageRequest.of(0, 3, Sort.by(Sort.Direction.DESC, "id"));
        return newsRepo.findAllByDateBefore(date, pageable).stream().map(NewsDTO::from).collect(Collectors.toList());
    }

    public NewsDTO getById(int id) throws NotFoundException {
        var news = NewsDTO.from(newsRepo.findById(id).orElseThrow(() -> new NotFoundException("News not found!")));
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

    public Page<NewsDTO> getUserNewsPageable(int userId, Pageable pageable) {
        return newsRepo.findAllByUserId(userId, pageable).map(NewsDTO::from);
    }

    public void saveNews(NewsAddForm form, MultipartFile image) {
        var news = new News();
        news.setImage("no-image.jpg");
        if (!image.isEmpty()) {
            String imageName = UUID.randomUUID() + image.getOriginalFilename();
            var dir = new File("target/classes/static/images/" + imageName);
            try {
                var os = new FileOutputStream(dir);
                os.write(image.getBytes());
                news.setImage(imageName);
                os.close();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        news.setUser(userRepo.findById(form.getUserId()).get());
        news.setTitle(form.getTitle());
        news.setDescr(form.getText());
        news.setDate(LocalDate.now());
        newsRepo.save(news);
    }
}
