package com.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

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
	
	private String otp = "";
	private String token = "";
	private String otp_created_at = "";
	
	@OneToMany(mappedBy = "user")
	List<AccountEntity> accounts;
	
}
