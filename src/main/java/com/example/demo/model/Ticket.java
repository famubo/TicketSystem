package com.example.demo.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Setter
@Getter
@Entity
@Table(name = "ticket")
public class Ticket {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;

    @OneToOne
    @JoinColumn(name = "cinema_id")
    private Cinema cinema;

    @OneToOne
    @JoinColumn(name = "theater_id")
    private Theater theater;

    @OneToOne
    @JoinColumn(name = "concert_id")
    private Concert concert;
}