package com.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.entity.CategoryEntity;
import com.entity.ExpenseEntity;
import com.entity.IncomeEntity;

@Repository
public interface ExpenseRepository extends JpaRepository<ExpenseEntity, String> {

	Optional<ExpenseEntity> findByExpenseId(String expenseId);
	List<ExpenseEntity> findAllByUser_UserId(String UserId);
	
	@Query(value = "SELECT * FROM expenses WHERE user_id = :userId AND transaction_date BETWEEN :startDate AND :endDate", nativeQuery = true)
	List<ExpenseEntity> findAllByUserAndTDate(
			@Param("userId") String userId, 
		    @Param("startDate") String startDate, 
		    @Param("endDate") String endDate
		);
}
