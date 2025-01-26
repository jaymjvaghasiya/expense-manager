package com.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.CategoryEntity;

@Repository
public interface CategoryRepository extends JpaRepository<CategoryEntity, String> {
	
	Optional<CategoryEntity> findByCategoryId(String categoryId);
	List<CategoryEntity> findAllByUser_UserId(String UserId);
}
