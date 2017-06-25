package com.javasda.YachtProject.model;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "orders")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "yacht_id")
    Yacht yacht;

    @ManyToOne
    @JoinColumn(name = "user_id")
    User user;

    LocalDate tripStartDate;
    Integer noOfDays;

    public Order() {
    }

    public Order(Yacht yacht, User user, LocalDate tripStartDate, Integer noOfDays) {
        this.yacht = yacht;
        this.user = user;
        this.tripStartDate = tripStartDate;
        this.noOfDays = noOfDays;
    }

    public LocalDate getTripStartDate() {
        return tripStartDate;
    }

    public void setTripStartDate(LocalDate tripStartDate) {
        this.tripStartDate = tripStartDate;
    }

    public Integer getNoOfDays() {
        return noOfDays;
    }

    public void setNoOfDays(Integer noOfDays) {
        this.noOfDays = noOfDays;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Yacht getYacht() {
        return yacht;
    }

    public void setYacht(Yacht yacht) {
        this.yacht = yacht;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                '}';
    }
}
