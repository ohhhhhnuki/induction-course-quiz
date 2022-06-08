package com.example.demo.domain.issue;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.validation.constraints.NotBlank;

@AllArgsConstructor
@Data
public class ScoreEntity {

    @NotBlank
    private String name;

    @NotBlank
    private int score;

    @NotBlank
    private String category;
}
