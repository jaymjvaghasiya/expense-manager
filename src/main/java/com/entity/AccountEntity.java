package com.entity;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.ToString;

@Entity
@Table(name = "accounts")
@Data
public class AccountEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String id;
	private String title;
	private Double amount;
	private String account_type;
	private String description;
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	@ToString.Exclude
	private UserEntity user;
	
}
