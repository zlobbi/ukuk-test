package km.ukuk.test.controllers;

import km.ukuk.test.servises.NewsService;
import km.ukuk.test.servises.UserService;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;
import java.time.LocalDate;

@Controller
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class MainContlorller {
    private UserService userService;
    private NewsService newsService;

    @GetMapping
    public String main(Model model, Principal principal, HttpServletRequest uriBuilder,
                       @PageableDefault(sort = {"id"}, direction = Sort.Direction.DESC) Pageable pageable) {
        var uri = uriBuilder.getRequestURI();
        var todayNews = newsService.getToDayNews(LocalDate.now(), pageable);
        var archiveNews = newsService.getLastArchiveNews(LocalDate.now());
        userService.addPrincipal(model, principal);
        model.addAttribute("todayNews", todayNews);
        model.addAttribute("lastArchiveNews", archiveNews);
        model.addAttribute("url", uri);
        return "index";
    }

    @GetMapping("/login")
    public String loginPage(@RequestParam(required = false, defaultValue = "false") Boolean error, Model model) {
        model.addAttribute("error", error);
        return "sign-in";
    }

}
