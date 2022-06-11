package com.example.demo.services;

import com.example.demo.model.Concert;

import java.util.List;

public interface ConcertService {
    public List<Concert> getAllConcerts();
    public Concert getConcertById(int id);
    public void addConcert(Concert concert);
    public void deleteConcert(int id);
    public Concert updateConcert(Concert concert, int id);
}