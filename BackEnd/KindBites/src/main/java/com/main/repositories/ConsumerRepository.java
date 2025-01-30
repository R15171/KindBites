package com.main.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.main.entities.Consumer;

@Repository
public interface ConsumerRepository extends JpaRepository<Consumer, Long> {

}