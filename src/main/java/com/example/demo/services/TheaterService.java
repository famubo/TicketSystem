package com.example.demo.services;

import com.example.demo.model.Theater;

import java.util.List;

public interface TheaterService {
    public List<Theater> getAllTheaters();
    public Theater getTheaterById(int id);
    public void addTheater(Theater theater);
    public void deleteTheater(int id);
    public Theater updateTheater(Theater theater, int id);
}