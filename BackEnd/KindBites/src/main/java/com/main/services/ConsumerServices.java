package com.main.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.entities.Consumer;
import com.main.repositories.ConsumerRepository;

@Service
public class ConsumerServices {
		
		
		@Autowired
		ConsumerRepository consumerRepository;

		public Consumer saveConsumer(Consumer consumer) {
			return consumerRepository.save(consumer);
		}

		public List<Consumer> getAllConsumers() {
			return consumerRepository.findAll();
		}

		public void deleteConsumer(long id) {

			consumerRepository.deleteById(id);
		}

		public Consumer updateConsumer(Consumer consumer) {

			return consumerRepository.save(consumer);
		}

}