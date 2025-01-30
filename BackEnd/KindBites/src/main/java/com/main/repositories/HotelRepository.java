package com.main.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.main.entities.Hotel;

@Repository
public interface HotelRepository extends JpaRepository<Hotel, Long> {

}