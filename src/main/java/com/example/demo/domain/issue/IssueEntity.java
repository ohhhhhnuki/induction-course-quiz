package com.example.demo.domain.issue;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
public class IssueEntity {
    private long id;
    private String description;
    private String question;
    private String answer1;
    private String answer2;
    private String answer3;
    private String answer4;
    private int answer;
    private String category;
}
