package com.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.dto.TransactionDTO;

@Repository
public interface TransactionRepository {
	List<TransactionDTO> findRecentTranscation(String userId);
}
