package com.javasda.YachtProject.model;

import com.google.common.collect.Lists;
import com.google.common.collect.Sets;

import javax.persistence.*;
import java.util.Calendar;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "yachts")
public class Yacht {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;
    private double price;  //double
    private int numberOfPersons;
    private String propulsion;
    private String hullType;
    private String descryption;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @OneToMany(mappedBy = "yacht" , cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<Order> orders = Lists.newArrayList();

    @OneToMany(mappedBy = "yacht" , cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<Calendarr> yachtBooking = Lists.newArrayList();


    public Yacht() {
    }

    public Yacht(String name, double price, int numberOfPersons, String propulsion,
                 String hullType, String description, User user) {
   
        this.name = name;
        this.price = price;
        this.numberOfPersons = numberOfPersons;
        this.propulsion = propulsion;
        this.hullType = hullType;
        this.descryption = description;
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getNumberOfPersons() {
        return numberOfPersons;
    }

    public void setNumberOfPersons(int numberOfPersons) {
        this.numberOfPersons = numberOfPersons;
    }

    public String getPropulsion() {
        return propulsion;
    }

    public void setPropulsion(String propulsion) {
        this.propulsion = propulsion;
    }

    public String getHullType() {
        return hullType;
    }

    public void setHullType(String hullType) {
        this.hullType = hullType;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

    public String getDescryption() {
        return descryption;
    }

    public void setDescryption(String descryption) {
        this.descryption = descryption;
    }

    public List<Calendarr> getYachtBooking() {
        return yachtBooking;
    }

    public void setYachtBooking(List<Calendarr> yachtBooking) {
        this.yachtBooking = yachtBooking;
    }

    @Override
    public String toString() {
        return "Yacht{" +
                "name='" + name + '\'' +
                ", price=" + price +
                ", numberOfPersons=" + numberOfPersons +
                ", propulsion='" + propulsion + '\'' +
                ", hullType='" + hullType + '\'' +
                ", descryption='" + descryption + '\'' +
                ", yachtBooking='" + yachtBooking + '\'' +
                '}';
    }
}
