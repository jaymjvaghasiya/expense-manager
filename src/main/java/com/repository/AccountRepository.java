package com.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.AccountEntity;

@Repository
public interface AccountRepository extends JpaRepository<AccountEntity, String>{
	Optional<AccountEntity> findById(String id);
}
