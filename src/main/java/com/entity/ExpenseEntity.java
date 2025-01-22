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
@Table(name = "Expenses")
@Data
public class ExpenseEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String expenseId;
	private String title;
	private String status;
	private Double amount;
	private String transactionDate;
	private String description;
	
	@ManyToOne
	@JoinColumn(name = "category_id")
	@ToString.Exclude
	private CategoryEntity category;
	
	@ManyToOne
	@JoinColumn(name = "subcategory_id")
	@ToString.Exclude
	private SubcategoryEntity subcategory;

	@ManyToOne
	@JoinColumn(name = "vendor_id")
	@ToString.Exclude
	private VendorEntity vendor;

	@ManyToOne
	@JoinColumn(name = "account_id")
	@ToString.Exclude	
	private AccountEntity account;

	@ManyToOne
	@JoinColumn(name = "user_id")
	@ToString.Exclude
	private UserEntity user;
	
}
