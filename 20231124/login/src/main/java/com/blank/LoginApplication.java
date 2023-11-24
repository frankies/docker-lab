package com.blank;

import java.time.LocalDateTime;
import java.util.concurrent.TimeUnit;

import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 *
 * @version 1.0
 *
 */
@SpringBootApplication
public class LoginApplication implements ApplicationRunner{

    public static void main(String[] args) {
        SpringApplication.exit(SpringApplication.run(LoginApplication.class, args));
    }
    
    @Override
    public void run(ApplicationArguments args) throws Exception {
        
        while (true) {
            try {
                System.out.println("==>>>> Hello," + LocalDateTime.now());
                TimeUnit.SECONDS.sleep(10);
            } catch (InterruptedException e) {
                e.printStackTrace();
            } 
        }
    }
}
