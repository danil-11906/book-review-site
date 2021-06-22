package com.simbirsoft.practice.bookreviewsite.dto;

import com.simbirsoft.practice.bookreviewsite.enums.Role;
import com.simbirsoft.practice.bookreviewsite.enums.Status;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UserDTO {

    private Long id;
    private String name;
    private String email;
    private String avatar;
    private Role role;
    private Status status;

}
