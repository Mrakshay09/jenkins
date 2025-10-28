package com.sample.jenkins;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class JenkinsApplication {

	public static void main(String[] args) {
		System.out.println("Testing Build Trigger Pipeline.....!");
		SpringApplication.run(JenkinsApplication.class, args);
	}

}
