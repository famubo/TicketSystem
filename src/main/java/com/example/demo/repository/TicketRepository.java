package com.example.demo.repository;

import com.example.demo.model.Ticket;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface TicketRepository extends CrudRepository<Ticket, Integer> {
    List<Ticket> findByUserId(int userid);
}
