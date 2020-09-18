package km.ukuk.test.servises;

import km.ukuk.test.dto.NewsDTO;
import km.ukuk.test.models.News;
import km.ukuk.test.models.Role;
import km.ukuk.test.models.User;
import km.ukuk.test.repositories.NewsRepo;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.data.domain.*;
import org.springframework.test.context.junit4.SpringRunner;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static org.mockito.Mockito.doReturn;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class NewsServiceTest {

    @Autowired
    private NewsService newsService;

    @MockBean
    private NewsRepo newsRepo;

    private News news;

    @Before
    public void fillNewsForTest() {
        Set<Role> roles = new HashSet<>();
        roles.add(Role.ADMIN);

        var newsList = new ArrayList<News>();

        var user = User.builder()
                .id(1)
                .roles(roles)
                .login("zlobbi")
                .password("admin")
                .birthdate(LocalDate.now())
                .news(newsList)
                .build();

        news = News.builder().id(1).user(user).date(LocalDate.now()).build();
        newsList.add(news);

    }

    @Test
    public void getTodayNewsTest() {
        Pageable pageable = PageRequest.of(0, 3, Sort.by(Sort.Direction.DESC, "id"));
        List<News> newsList = new ArrayList<>();
        newsList.add(news);
        Page<News> page = new PageImpl<>(newsList);
        doReturn(page).when(newsRepo).findAllByDate(LocalDate.now(), pageable);
        Assert.assertEquals(page.map(NewsDTO::from), newsService.getTodayNews(LocalDate.now(), pageable));
    }

    @Test
    public void getLastArchiveNewsTest() {
        Pageable pageable = PageRequest.of(0, 3, Sort.by(Sort.Direction.DESC, "id"));
        List<News> newsList = new ArrayList<>();
        newsList.add(news);
        Page<News> page = new PageImpl<>(newsList);
        doReturn(page).when(newsRepo).findAllByDateBefore(LocalDate.now(), pageable);

    }



}