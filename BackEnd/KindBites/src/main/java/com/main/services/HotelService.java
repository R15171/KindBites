package com.main.services;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.entities.Hotel;
import com.main.repositories.HotelRepository;

@Service
public class HotelService {
		
		@Autowired
		HotelRepository hotelRepository;
		
		public Hotel saveHotel(Hotel hotel) {

			return hotelRepository.save(hotel);
		}

		public Hotel getHoteleById(long id) {

			return hotelRepository.findById(id).get();
		}

		public void deleteHotel(long id) {

			hotelRepository.deleteById(id);
		}

		public List<Hotel> getAllHotel() {

			return hotelRepository.findAll();
		}

		public Hotel updateHotel(Hotel hotel) {

			return hotelRepository.save(hotel);
		}
	
}