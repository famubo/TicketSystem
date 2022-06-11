package com.example.demo.services.Imp;

import com.example.demo.model.Theater;
import com.example.demo.repository.TheaterRepository;
import com.example.demo.services.TheaterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class TheaterServiceImplementation implements TheaterService {

    @Autowired
    TheaterRepository theaterRepository;

    @Override
    public List<Theater> getAllTheaters() {
        return (List<Theater>) theaterRepository.findAll();
    }

    @Override
    public Theater getTheaterById(int id) {
        return theaterRepository.findById(id).get();
    }

    @Override
    public void addTheater(Theater theater) {
        theaterRepository.save(theater);
    }

    @Override
    public void deleteTheater(int id) {
        theaterRepository.deleteById(id);
    }

    @Override
    public Theater updateTheater(Theater theater1, int id) {
        theaterRepository.deleteById(id);
        Theater theater = theaterRepository.save(theater1);

        return theater;
    }

}