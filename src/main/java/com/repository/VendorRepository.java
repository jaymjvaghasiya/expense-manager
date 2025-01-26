package com.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.VendorEntity;

@Repository
public interface VendorRepository extends JpaRepository<VendorEntity, String> {
	Optional<VendorEntity> findByVendorId(String vendorId);
	List<VendorEntity> findAllByUser_UserId(String UserId);
}
