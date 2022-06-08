package com.example.demo.web.user;

import com.example.demo.web.validation.UniqueUsername;
import lombok.AllArgsConstructor;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Data
@AllArgsConstructor
public class UserForm {

    @NotBlank
    @UniqueUsername
    private String username;
    @NotBlank
    @Size(min=12, max=128)
    private String password;

    @NotBlank
    private String authority;
}
