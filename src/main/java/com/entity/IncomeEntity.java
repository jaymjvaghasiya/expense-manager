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
@Table(name = "incomes")
@Data
public class IncomeEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String incomeId;
	private String title;
	private String status = "Received";
	private Double amount;
	private String transcationData;
	private String description;
	
	@ManyToOne
	@JoinColumn(name = "account_id")
	@ToString.Exclude
	private AccountEntity account;
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	@ToString.Exclude
	private UserEntity user;
}
