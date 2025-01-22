package com.entity;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.ToString;

@Entity
@Table(name = "users")
@Data
public class UserEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private String userId;
	private String firstname;
	private String lastname;
	private String email;
	private String mobile;
	private String password;
	private String role = "user";
	private String created_at;
	private String profile_path = "";
	
	private String otp = "";
	private String token = "";
	private String otp_created_at = "";
	
	@OneToMany(mappedBy = "user")
	@ToString.Exclude
	private List<AccountEntity> accounts;
	@OneToMany(mappedBy = "user")
	@ToString.Exclude
	private List<VendorEntity> vendors;
	@OneToMany(mappedBy = "user")
	@ToString.Exclude
	private List<CategoryEntity> categories;
	@OneToMany(mappedBy = "user")
	@ToString.Exclude
	private List<SubcategoryEntity> subcategories;
	@OneToMany(mappedBy = "user")
	@ToString.Exclude
	private List<ExpenseEntity> expenses;
	
}
