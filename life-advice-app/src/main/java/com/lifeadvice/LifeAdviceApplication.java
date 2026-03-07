package com.lifeadvice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class LifeAdviceApplication {
    public static void main(String[] args) {
        SpringApplication.run(LifeAdviceApplication.class, args);
        System.out.println("\n========================================");
        System.out.println("  Life Advice App is Running!");
        System.out.println("  URL: http://localhost:8080");
        System.out.println("  H2 Console: http://localhost:8080/h2-console");
        System.out.println("========================================\n");
    }
}
