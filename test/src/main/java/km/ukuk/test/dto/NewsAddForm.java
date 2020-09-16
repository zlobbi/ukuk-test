package km.ukuk.test.dto;

import lombok.Data;

import javax.validation.constraints.Size;

@Data
public class NewsAddForm {

    @Size(min = 5, message = "Min symbols for title 5!")
    private String title;

    @Size(min = 15, message = "Min symbols for text 15!")
    private String text;

    private int userId;
}
