package com.simbirsoft.practice.bookreviewsite.dto;

import com.simbirsoft.practice.bookreviewsite.enums.Role;
import com.simbirsoft.practice.bookreviewsite.enums.UserStatus;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UserDTO implements Serializable {

    private Long id;
    private String name;
    private String email;
    private String avatar;
    private Role role;
    private UserStatus userStatus;

}
