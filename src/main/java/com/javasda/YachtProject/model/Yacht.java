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

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @OneToMany(mappedBy = "yacht" , cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<Order> orders = Lists.newArrayList();

    public Yacht() {
    }

    public Yacht(String name, User user) {
        this.name = name;
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
                ", orders=" + orders +
                '}';
    }
}
