package km.ukuk.test.controllers;

import km.ukuk.test.dto.NewsAddForm;
import km.ukuk.test.servises.NewsService;
import km.ukuk.test.servises.UserService;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.security.Principal;
import java.time.LocalDate;

@Controller
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class NewsController {

    private NewsService newsService;
    private UserService userService;

    @GetMapping("/news/{id}")
    public String oneNews(Model model, Principal principal, @PathVariable("id") int id) {
        userService.addPrincipal(model, principal);
        var news = newsService.getById(id);
        model.addAttribute("news", news);
        return "news";
    }

    @GetMapping("/archive-news")
    public String archiveNews(Model model, Principal principal, HttpServletRequest uriBuilder,
                              @PageableDefault(sort = {"id"}, direction = Sort.Direction.DESC, size = 6) Pageable pageable) {
        var uri = uriBuilder.getRequestURI();
        var archiveNews = newsService.getArchiveNews(LocalDate.now(), pageable);
        userService.addPrincipal(model, principal);
        if (archiveNews.hasContent()) {
            model.addAttribute("archiveNews", archiveNews);
            model.addAttribute("url", uri);
        }

        return "archive";
    }

    @GetMapping("/users/{id}/news")
    public String userNews(Model model, Principal principal, HttpServletRequest uriBuilder, @PathVariable("id") int userId,
                           @PageableDefault(sort = {"id"}, direction = Sort.Direction.DESC, size = 6) Pageable pageable) {
        var uri = uriBuilder.getRequestURI();
        var userNews = newsService.getUserNewsPageable(userId, pageable);
        userService.addPrincipal(model, principal);
        if (userNews.hasContent()) {
            model.addAttribute("archiveNews", userNews);
            model.addAttribute("url", uri);
        }

        return "archive";
    }

    @PostMapping("/news/add")
    public String addNews(@Valid NewsAddForm form, BindingResult validationResult, RedirectAttributes attributes,
                          @RequestParam("image") MultipartFile image) {
        if (validationResult.hasErrors()) {
            attributes.addFlashAttribute("errors", validationResult.getFieldErrors());
            return "redirect:/users/" + form.getUserId();
        }
        newsService.saveNews(form, image);
        attributes.addFlashAttribute("isSaved", true);
        return "redirect:/users/" + form.getUserId();
    }



}
