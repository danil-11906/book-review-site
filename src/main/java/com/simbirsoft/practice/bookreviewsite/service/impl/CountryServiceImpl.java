package com.simbirsoft.practice.bookreviewsite.service.impl;

import com.simbirsoft.practice.bookreviewsite.dto.CountryDTO;
import com.simbirsoft.practice.bookreviewsite.repository.CountryRepository;
import com.simbirsoft.practice.bookreviewsite.service.CountryService;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author Anvar Khasanov
 * student of ITIS KFU
 * group 11-905
 */

@Service
public class CountryServiceImpl implements CountryService {

    private final CountryRepository countryRepository;

    private final ModelMapper modelMapper;

    public CountryServiceImpl(CountryRepository countryRepository, ModelMapper modelMapper) {
        this.countryRepository = countryRepository;
        this.modelMapper = modelMapper;
    }

    @Override
    public List<CountryDTO> getAllCountries() {
        return countryRepository.findAll().stream()
                .map(country -> modelMapper.map(country, CountryDTO.class))
                .collect(Collectors.toList());
    }
}
