package com.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.IncomeEntity;

@Repository
public interface IncomeRepository extends JpaRepository<IncomeEntity, String>{

	Optional<IncomeEntity> findByIncomeId(String incomeId);
}
