package com.example.demo.repository;

import com.example.demo.model.Admin;
import org.springframework.data.repository.CrudRepository;

public interface AdminRepository extends CrudRepository<Admin, Integer> {
    Admin findByUsername(String username);
}