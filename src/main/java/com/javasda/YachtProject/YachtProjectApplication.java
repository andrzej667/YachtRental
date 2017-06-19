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

//public Yacht(String name, int price, int numberOfPersons, String propulsion, String hullType, User user)
		mainService.addUser("login1", "haslo1", "OWNER");
		mainService.addUser("login2", "haslo2", "OWNER");
		mainService.addUser("login3", "haslo3", "USER");

		mainService.addYacht("yacht1", "login1", 2000,
				6, "motor1", "katamaran" );
		mainService.addYacht("yacht2", "login2", 3000,
				4, "zagle", "jeden");
		mainService.addYacht("yacht3", "login1", 4000,
				8, "motor", "dwaKadluby");

		mainService.addOrder("login3", "yacht1");
		mainService.addOrder("login3", "yacht2");
		mainService.addOrder("login3", "yacht3");
		mainService.addOrder("login3", "yacht1");
		System.out.println(mainService.listOfUsers());
		System.out.println(mainService.listOfOrders());
	}
}
