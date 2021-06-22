package com.simbirsoft.practice.bookreviewsite.service;

public interface EmailSendingService {

    void sendEmail(String to, String letter, String subject);

}
