package com.javasda.YachtProject.model;


import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "calendarr", schema = "public")
public class Calendarr {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;

    @Column(name = "date_booked", columnDefinition = "DATE")
    LocalDate dateBooked;

    @ManyToOne
    @JoinColumn(name = "yacht_id")
    Yacht yacht;

    public Calendarr(LocalDate dateBooked, Yacht yacht) {
        this.dateBooked = dateBooked;
        this.yacht = yacht;
    }

    public Calendarr() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDate getDateBooked() {
        return dateBooked;
    }

    public void setDateBooked(LocalDate dateBooked) {
        this.dateBooked = dateBooked;
    }

    public Yacht getYacht() {
        return yacht;
    }

    public void setYacht(Yacht yacht) {
        this.yacht = yacht;
    }

    @Override
    public String toString() {
        return "Calendarr{" +
                "id=" + id +
                ", dateBooked=" + dateBooked +
                '}';
    }
}
