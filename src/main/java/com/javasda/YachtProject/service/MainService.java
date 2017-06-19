package com.javasda.YachtProject.service;

import com.javasda.YachtProject.model.Order;
import com.javasda.YachtProject.model.User;
import com.javasda.YachtProject.model.Yacht;
import com.javasda.YachtProject.repository.OrderRepository;
import com.javasda.YachtProject.repository.UserRepository;
import com.javasda.YachtProject.repository.YachtRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MainService {

    private final OrderRepository orderRepository;
    private final UserRepository userRepository;
    private final YachtRepository yachtRepository;

    @Autowired
    public MainService(OrderRepository orderRepository,
                       UserRepository userRepository, YachtRepository yachtRepository) {
        this.orderRepository = orderRepository;
        this.userRepository = userRepository;
        this.yachtRepository = yachtRepository;
    }
    public void addUser(String login, String password, String role) {
        userRepository.save(new User(login, password, role));
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
    public void addYacht(String name, String userLogin, int price, int numberOfPersons,String propulsion, String hullType) {
        yachtRepository.save(new Yacht(
                name, price,numberOfPersons, propulsion, hullType , userRepository.findUserByLogin(userLogin)));
    }
    public void deleteYacht(String yachtName) {
        yachtRepository.delete(yachtRepository.findYachtByName(yachtName));
    }
    public List<Yacht> listOfYachts(){
        return (List) yachtRepository.findAll();
    }
    public void addOrder(String userLogin, String yachtName){
        orderRepository.save(new Order(yachtRepository.findYachtByName(yachtName), userRepository.findUserByLogin(userLogin)));
    }
    public List<Order> listOfOrders(){
        return (List) orderRepository.findAll();
    }

}
