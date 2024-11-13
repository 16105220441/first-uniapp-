package org.example.shoppingspring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.CrossOrigin;

@SpringBootApplication(scanBasePackages = "org.example.shoppingspring")

public class ShoppingSpringApplication {

    public static void main(String[] args) {
        SpringApplication.run(ShoppingSpringApplication.class, args);
    }

}
