package com.example.demo.services;

import com.example.demo.model.Ticket;

import java.util.List;

public interface TicketService {
    public List<Ticket> getAllTicket();
    public Ticket getTicketById(int id);
    public void addTicket(Ticket ticket);
    public void deleteTicket(int id);
    public List<Ticket> getByUserIdTickets(int userid);
}
