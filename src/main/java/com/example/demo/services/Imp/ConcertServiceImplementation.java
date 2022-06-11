package com.example.demo.services.Imp;

import com.example.demo.model.Concert;
import com.example.demo.repository.ConcertRepository;
import com.example.demo.services.ConcertService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class ConcertServiceImplementation implements ConcertService {

    @Autowired
    ConcertRepository concertRepository;

    @Override
    public List<Concert> getAllConcerts() {
        return (List<Concert>) concertRepository.findAll();
    }

    @Override
    public Concert getConcertById(int id) {
        return concertRepository.findById(id).get();
    }

    @Override
    public void addConcert(Concert concert) {
        concertRepository.save(concert);
    }

    @Override
    public void deleteConcert(int id) {
        concertRepository.deleteById(id);
    }

    @Override
    public Concert updateConcert(Concert concert1, int id) {
        concertRepository.deleteById(id);
        Concert concert = concertRepository.save(concert1);

        return concert;
    }

}