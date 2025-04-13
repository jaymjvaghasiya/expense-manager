package com.repository;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.dto.TransactionDTO;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Repository
public class TransactionRepositoryImpl implements TransactionRepository {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public List<TransactionDTO> findRecentTranscation(String userId) {
		String sql = """
				with t1 as (
					select transcation_data as transcation_date, 'Income' as category,description, amount, status
					from incomes where user_id = :userId order by 1 limit 5
				), t2 as (
					select transaction_date, 'Expense' as category, description, amount, status
					from expenses where user_id = :userId order by 1 limit 5
				)
				select * from t1 union all select * from t2 order by 1 desc;
				""";
		
		List<Object[]> rows = entityManager.createNativeQuery(sql).setParameter("userId", userId).getResultList();
		
		return rows.stream().map(
					row -> new TransactionDTO(
							java.sql.Date.valueOf((String) row[0]), 
							(String) row[1], 
							(String) row[2], 
							row[3] == null ? 0.0 : ((Number)row[3]).doubleValue(), 
							(String) row[4]
						)
				).toList();
	}
}
