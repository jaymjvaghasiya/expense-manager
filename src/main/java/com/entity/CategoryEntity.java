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
@Table(name = "categories")
@Data
public class CategoryEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String categoryId;
	private String title;
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	@ToString.Exclude
	private UserEntity user;
}
