package com.spring.awsservices.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AwsServiceController {

    @GetMapping("/aws-service/isActive")
    public String isActive() {
        return "TRUE application is active.";
    }

}
