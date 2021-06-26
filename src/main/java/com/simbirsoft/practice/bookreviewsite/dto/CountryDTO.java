package com.simbirsoft.practice.bookreviewsite.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author Anvar Khasanov
 * student of ITIS KFU
 * group 11-905
 */

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CountryDTO {
    private Long id;
    private String name;
}

