package com.javasda.YachtProject.model;

import com.google.common.collect.Lists;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "yachts")
public class Yacht {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;
    private int price;
    private int numberOfPersons;
    private String propulsion;
    private String hullType;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @OneToMany(mappedBy = "yacht" , cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<Order> orders = Lists.newArrayList();

    public Yacht() {
    }

    public Yacht(String name, int price, int numberOfPersons, String propulsion, String hullType, User user) {
        this.name = name;
        this.price = price;
        this.numberOfPersons = numberOfPersons;
        this.propulsion = propulsion;
        this.hullType = hullType;
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

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
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


    @Override
    public String toString() {
        return "Yacht{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", numberOfPersons=" + numberOfPersons +
                ", propulsion='" + propulsion + '\'' +
                ", hullType='" + hullType + '\'' +
                ", user=" + user +
                ", orders=" + orders +
                '}';
    }
}
