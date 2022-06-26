package com.example.demo.domain.issue;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Data
public class InquiryForm {

//    @NotBlank
    @Size(max=256)
    public String title;

//    @NotBlank
    @Size(max=256)
    public String summary;

}
