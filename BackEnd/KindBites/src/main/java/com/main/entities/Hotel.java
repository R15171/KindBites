package com.main.entities;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import jakarta.persistence.Id;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="hotelInfo")
public class Hotel {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long Id;
	private String hotelName;
	private String hotelEmailString;
	private long hotelContactNumber;
	private String hotelLiscence;
	private String hotelAddrssString;
	private String foodTypeString;
	private String foodStatus;
	private int foodQuantity;

}
