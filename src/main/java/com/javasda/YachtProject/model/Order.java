package com.javasda.YachtProject.model;

import javax.persistence.*;

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

    public Order() {
    }

    public Order(Yacht yacht, User user) {
        this.yacht = yacht;
        this.user = user;
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
                ", yacht=" + yacht +
                ", user=" + user +
                '}';
    }
}
