package com.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.ToString;

@Entity
@Table(name = "subcategories")
@Data
public class SubcategoryEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String subCatId;
	private String title;
	private String mainCategory;
	
	@ManyToOne
	@JoinColumn(name = "category_id")
	@ToString.Exclude
	private CategoryEntity category;
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	@ToString.Exclude
	private UserEntity user;
	
	@OneToMany(mappedBy = "subcategory")
	@ToString.Exclude
	private List<ExpenseEntity> expenses;
}
