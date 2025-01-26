package com.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.SubcategoryEntity;

@Repository
public interface SubcategoryRepository extends JpaRepository<SubcategoryEntity, String> {

	Optional<SubcategoryEntity> findBySubCatId(String subCatId);
	List<SubcategoryEntity> findAllByUser_UserId(String UserId);
}
