package com.example.demo.web.issue;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Data
public class IssueForm {
    @NotBlank
    @Size(max=256)
    private String question;

    @NotBlank
    @Size(max=256)
    private String description;

    @NotBlank
    @Size(max=256)
    private String answer1;

    @NotBlank
    @Size(max=256)
    private String answer2;

    @NotBlank
    @Size(max=256)
    private String answer3;

    @NotBlank
    @Size(max=256)
    private String answer4;

    @NotBlank
    private String answer;

    @NotBlank
    @Size(max=256)
    private String category;


}
