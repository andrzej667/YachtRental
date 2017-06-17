package com.javasda.YachtProject;

import com.javasda.YachtProject.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class YachtProjectApplication implements CommandLineRunner {

	@Autowired
	MainService mainService;

	public static void main(String[] args) {
		SpringApplication.run(YachtProjectApplication.class, args);
	}

	@Override
	public void run(String... strings) throws Exception {


		mainService.addUser("login1", "haslo1", "OWNER");
		mainService.addUser("login2", "haslo2", "OWNER");
		mainService.addUser("login3", "haslo3", "USER");

		mainService.addYacht("yacht1", "login1");
		mainService.addYacht("yacht2", "login2");
		mainService.addYacht("yacht3", "login1");

		System.out.println(mainService.listOfYachts());
		mainService.deleteUser("login2");
		mainService.deleteYacht("yacht1");
		System.out.println(mainService.listOfUsers());
		System.out.println(mainService.listOfYachts());


	}
}
