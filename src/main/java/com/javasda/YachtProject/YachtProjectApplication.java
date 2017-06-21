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
	// USER (String login, String password, String role, String firstName, String lastName, String email)
		mainService.addUser("login1", "haslo1", "OWNER",
				"imie1", "nazwisko1", "mail1@a.pl" );
		mainService.addUser("login2", "haslo2", "OWNER",
				"imie2", "nazwisko2", "mail2@a.pl");
		mainService.addUser("login3", "haslo3", "USER",
				"imie3", "nazwisko3", "mail3@a.pl");


	// Yacht(String name, double price, int numberOfPersons, String propulsion, String hullType, String description, User user)
	// Propulsion engine, sail, hybrid
	// HullType Monohull, Multihull
		mainService.addYacht("yacht1", "login1", 2000,
				6, "engine", "Monohull", "opis1" );
		mainService.addYacht("yacht2", "login2", 3000,
				4, "sail", "Monohull", "opis2");
		mainService.addYacht("yacht3", "login1", 4000,
				8, "hybrid", "Multihull", "opis3");

		mainService.addOrder("login3", "yacht1");
		mainService.addOrder("login3", "yacht2");
		mainService.addOrder("login3", "yacht3");
		mainService.addOrder("login3", "yacht1");
		System.out.println(mainService.listOfUsers());
		System.out.println(mainService.listOfOrders());
	}
}
