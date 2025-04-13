package com.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.entity.AccountEntity;
import com.entity.UserEntity;

@Repository
public interface AccountRepository extends JpaRepository<AccountEntity, String>{
	Optional<AccountEntity> findById(String id);
	List<AccountEntity> findAllByUser_UserId(String userId);
	
	@Query(value = "SELECT SUM(amount) FROM accounts WHERE user_id = ?1", nativeQuery = true)
	Double findTotalBalance(@Param("userId") String userId);
}
