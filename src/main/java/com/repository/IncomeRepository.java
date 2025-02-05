package com.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.entity.IncomeEntity;

@Repository
public interface IncomeRepository extends JpaRepository<IncomeEntity, String>{

	Optional<IncomeEntity> findByIncomeId(String incomeId);
	List<IncomeEntity> findAllByUser_UserId(String userId);
	
	@Query(value = "SELECT * FROM incomes WHERE user_id = :userId AND transcation_data BETWEEN :startDate AND :endDate", nativeQuery = true)
	List<IncomeEntity> findAllByUserAndTDate(
			@Param("userId") String userId, 
		    @Param("startDate") String startDate, 
		    @Param("endDate") String endDate
		);
}
