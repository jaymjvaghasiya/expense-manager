package com.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.CategoryEntity;
import com.entity.ExpenseEntity;

@Repository
public interface ExpenseRepository extends JpaRepository<ExpenseEntity, String> {

	Optional<ExpenseEntity> findByExpenseId(String expenseId);
	List<ExpenseEntity> findAllByUser_UserId(String UserId);
}
