package com.javasda.YachtProject;

import com.javasda.YachtProject.model.Order;
import com.javasda.YachtProject.model.User;
import com.javasda.YachtProject.model.Yacht;
import com.javasda.YachtProject.model.Calendarr;
import com.javasda.YachtProject.service.MainService;
import com.javasda.YachtProject.storage.StorageProperties;
import com.javasda.YachtProject.storage.StorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;

import java.time.LocalDate;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;


@SpringBootApplication
@EnableConfigurationProperties(StorageProperties.class)
public class YachtProjectApplication implements CommandLineRunner {

	@Autowired
	MainService mainService;

	@Autowired
	StorageService storageService;

	public static void main(String[] args) {
		SpringApplication.run(YachtProjectApplication.class, args);
	}

//	public static void main(String args[]) {
//		Configuration config = new Configuration();
//		config.addAnnotatedClass(Order.class);
//		config.addAnnotatedClass(User.class);
//		config.addAnnotatedClass(Yacht.class);
//		config.configure();
//		new SchemaExport(config).create(true, true);
//	}

	@Bean
	CommandLineRunner init() {
		return (args) -> {
			//storageService.deleteAll();
			//storageService.init();
		};
	}
	@Override
	public void run(String... strings) throws Exception {
//	// USER (String login, String password, String role, String firstName, String lastName, String email)
//		mainService.addUser("login1", "haslo1", "OWNER",
//				"imie1", "nazwisko1", "mail1@a.pl" );
//		mainService.addUser("login2", "haslo2", "OWNER",
//				"imie2", "nazwisko2", "mail2@a.pl");
//		mainService.addUser("login3", "haslo3", "USER",
//				"imie3", "nazwisko3", "mail3@a.pl");
//
//
//	// Yacht(String name, double price, int numberOfPersons, String propulsion, String hullType, String description, User user)
//	// Propulsion engine, sail, hybrid
	// HullType Monohull, Multihull
		mainService.addYacht("yacht1", "login1", 2000,
				6, "engine", "Monohull", "opis1","plik1" );
		mainService.addYacht("yacht2", "login2", 3000,
				4, "sail", "Monohull", "opis2", "plik2");
		mainService.addYacht("yacht3", "login1", 4000,
				8, "hybrid", "Multihull", "opis3", "plik3");

		Calendarr book = new Calendarr(LocalDate.of(2018, 05, 22)
				, mainService.findYachByName("yacht1"));

		mainService.placeOrder("yacht1", "login3", "2017-08-06",2);
		mainService.placeOrder("yacht1", "login3", "2017-08-07",4);

		System.out.println(mainService.listOfUsers());
		System.out.println(mainService.listOfYachts());
		System.out.println(mainService.showYachtReservation("yacht1"));

//
//		mainService.addOrder("login3", "yacht1");
//		mainService.addOrder("login3", "yacht2");
//		mainService.addOrder("login3", "yacht3");
//		mainService.addOrder("login3", "yacht1");
//		System.out.println(mainService.listOfUsers());
//		System.out.println(mainService.listOfOrders());
	}
}

