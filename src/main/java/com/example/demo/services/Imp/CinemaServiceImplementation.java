package com.example.demo.services.Imp;

import com.example.demo.model.Cinema;
import com.example.demo.repository.CinemaRepository;
import com.example.demo.services.CinemaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class CinemaServiceImplementation implements CinemaService {

    @Autowired
    CinemaRepository cinemaRepository;

    @Override
    public List<Cinema> getAllCinemas() {
        return (List<Cinema>) cinemaRepository.findAll();
    }

    @Override
    public Cinema getCinemaById(int id) {
        return cinemaRepository.findById(id).get();
    }

    @Override
    public void addCinema(Cinema cinema) {
        cinemaRepository.save(cinema);
    }

    @Override
    public void deleteCinema(int id) {
        cinemaRepository.deleteById(id);
    }

    @Override
    public Cinema updateCinema(Cinema cinema1, int id) {
        cinemaRepository.deleteById(id);
        Cinema cinema = cinemaRepository.save(cinema1);

        return cinema;
    }

}
