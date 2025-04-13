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
	
	@Query(value = "SELECT SUM(amount) FROM expenses WHERE user_id = ?1 AND EXTRACT(YEAR FROM transaction_date::DATE) = ?2", nativeQuery = true)
	Double findTotalExpense(@Param("userId") String user_id, @Param("year") Integer year);
	
	@Query(value = "SELECT SUM(amount) FROM expenses WHERE user_id = ?1 and EXTRACT(MONTH FROM transaction_date::DATE) = ?2", nativeQuery = true)
	Double findMonthlyTotalExpense(@Param("userId") String user_id, @Param("month") Integer month);
	
	@Query(value = "select * from expenses where user_id = ?1 order by 1 limit 5", nativeQuery = true)
	List<ExpenseEntity> findLetestExpences(@Param("userId") String userId);
}
