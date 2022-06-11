package com.example.demo.repository;


import com.example.demo.model.Concert;
import org.springframework.data.repository.CrudRepository;

public interface ConcertRepository extends CrudRepository<Concert, Integer> {
}
