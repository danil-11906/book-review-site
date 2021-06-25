package com.simbirsoft.practice.bookreviewsite.dto;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.Email;
import javax.validation.constraints.Size;

@Data
public class ProfileEditForm {

    @Size(min = 1, max = 50)
    private String name;

    @Email
    private String email;

    private MultipartFile avatar;

}
