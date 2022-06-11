package com.example.demo.services;

import com.example.demo.model.Cinema;

import java.util.List;

public interface CinemaService {
    public List<Cinema> getAllCinemas();
    public Cinema getCinemaById(int id);
    public void addCinema(Cinema cinema);
    public void deleteCinema(int id);
    public Cinema updateCinema(Cinema cinema, int id);
}