package km.ukuk.test.dto;

import km.ukuk.test.models.News;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.time.format.DateTimeFormatter;

@Data
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@Builder
public class NewsDTO {
    private int id;
    private String title;
    private String descr;
    private String image;
    private String date;
    private UserDTO user;

    public static NewsDTO from(News news) {
        return builder()
                .id(news.getId())
                .title(news.getTitle())
                .descr(news.getDescr())
                .image(news.getImage())
                .date(news.getDate().format(DateTimeFormatter.ofPattern("dd.MM.yyyy")))
                .user(UserDTO.from(news.getUser()))
                .build();
    }
}
