package com.example.demo.domain.issue;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Data
@AllArgsConstructor
public class RecordForm {

//    @NotBlank
    private String name;

//    @NotBlank
    @Size(max=256)
    private int score;
}