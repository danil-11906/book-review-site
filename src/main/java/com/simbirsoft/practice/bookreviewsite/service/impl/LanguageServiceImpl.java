package com.simbirsoft.practice.bookreviewsite.service.impl;

import com.simbirsoft.practice.bookreviewsite.dto.LanguageDTO;
import com.simbirsoft.practice.bookreviewsite.repository.LanguageRepository;
import com.simbirsoft.practice.bookreviewsite.service.LanguageService;
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
public class LanguageServiceImpl implements LanguageService {

    private final LanguageRepository languageRepository;

    private final ModelMapper modelMapper;

    public LanguageServiceImpl(LanguageRepository languageRepository, ModelMapper modelMapper) {
        this.languageRepository = languageRepository;
        this.modelMapper = modelMapper;
    }

    @Override
    public List<LanguageDTO> getAllLanguages() {
        return languageRepository.findAll().stream()
                .map(language -> modelMapper.map(language, LanguageDTO.class))
                .collect(Collectors.toList());
    }
}

