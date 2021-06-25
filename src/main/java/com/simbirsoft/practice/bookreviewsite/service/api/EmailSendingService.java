package com.simbirsoft.practice.bookreviewsite.service.api;

public interface EmailSendingService {

    void sendEmail(String to, String letter, String subject);

}
