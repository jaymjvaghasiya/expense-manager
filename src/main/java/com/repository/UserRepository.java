package com.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, String> {

	Optional<UserEntity> findByEmail(String email);
	Optional<UserEntity> findByMobile(String mobile);
	Optional<UserEntity> findByToken(String token);
	
//	fidByEmailAndUpdate(String firstname, String lastname, )
}
