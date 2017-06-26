package com.javasda.YachtProject.service;

import com.google.common.collect.Lists;
import com.javasda.YachtProject.model.Calendarr;
import com.javasda.YachtProject.model.Order;
import com.javasda.YachtProject.model.User;
import com.javasda.YachtProject.model.Yacht;
import com.javasda.YachtProject.repository.CalendarrRepository;
import com.javasda.YachtProject.repository.OrderRepository;
import com.javasda.YachtProject.repository.UserRepository;
import com.javasda.YachtProject.repository.YachtRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

@Service
public class MainService {

    private final OrderRepository orderRepository;
    private final UserRepository userRepository;
    private final YachtRepository yachtRepository;
    private final CalendarrRepository calendarrRepository;

    @Autowired
    public MainService(OrderRepository orderRepository,
                       UserRepository userRepository, YachtRepository yachtRepository,
                       CalendarrRepository calendarrRepository) {
        this.orderRepository = orderRepository;
        this.userRepository = userRepository;
        this.yachtRepository = yachtRepository;
        this.calendarrRepository = calendarrRepository;
    }

    public void addUser(String login, String password, String role, String firstName, String lastName, String email) {
        userRepository.save(new User(login, password, role, firstName, lastName, email));
    }
    public void deleteUser(String login){
        userRepository.delete(userRepository.findUserByLogin(login));
    }
    public List<User> listOfUsers(){
        return (List) userRepository.findAll();
    }
    public User findUserByName(String login){
        return userRepository.findUserByLogin(login);
    }

    public void addYacht(String name, String userLogin, double price, int numberOfPersons,
                         String propulsion, String hullType, String description, String fileName) {
            yachtRepository.save(new Yacht(name, price,numberOfPersons,
                                     propulsion, hullType , description, userRepository.findUserByLogin(userLogin),
                    fileName));
    }
    public void deleteYacht(String yachtName) {
        yachtRepository.delete(yachtRepository.findYachtByName(yachtName));
    }
    public List<Yacht> listOfYachts(){
        return (List) yachtRepository.findAll();
    }
    public Yacht findYachByName(String yachtName){
        return yachtRepository.findYachtByName(yachtName);
    }

    public boolean placeOrder(String yachtName, String userLogin, String date, int noOfDays) {
        Boolean flag = true;
        LocalDate startDate = LocalDate.parse(date);
        List<Calendarr> listOfReservation = yachtRepository.findYachtByName(yachtName).getYachtBooking();
        List<LocalDate> listOfBookedDates = Lists.newArrayList();
        List<Calendarr> listOfCalendarr = Lists.newArrayList();

        for (Calendarr c : listOfReservation) {
            listOfBookedDates.add(c.getDateBooked());
        }

        for (int i = 0; i < noOfDays; i++) {
            if (listOfBookedDates.contains(startDate.plusDays(i))) {
                flag = false;
            }
            listOfCalendarr.add(new Calendarr(startDate.plusDays(i), yachtRepository.findYachtByName(yachtName)));
        }

        if (flag == true) {
            orderRepository.save(new Order(yachtRepository.findYachtByName(yachtName),
                    userRepository.findUserByLogin(userLogin), startDate, noOfDays));
            for (int i = 0; i < noOfDays; i++) {
                calendarrRepository.save(listOfCalendarr.get(i));
            }
        }
        return flag;
    }

    public List<Order> listOfOrders(){
        return (List) orderRepository.findAll();
    }

    public List<Calendarr> showYachtReservation(String yachtName){
        return yachtRepository.findYachtByName(yachtName).getYachtBooking();
    }


}
