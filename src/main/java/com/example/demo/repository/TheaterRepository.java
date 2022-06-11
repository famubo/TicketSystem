package com.example.demo.repository;

import com.example.demo.model.Theater;
import org.springframework.data.repository.CrudRepository;

public interface TheaterRepository extends CrudRepository<Theater, Integer> {
}
