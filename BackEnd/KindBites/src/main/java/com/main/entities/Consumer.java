package com.main.entities;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="ConsumerInfo")
public class Consumer {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private String consumerNameString;
	private String consumerEmail;
	private String consumerContactString;
	private String consumerLicense;
	private String consumerAddressString;
	private long numberOfChildren=1;
	
}

