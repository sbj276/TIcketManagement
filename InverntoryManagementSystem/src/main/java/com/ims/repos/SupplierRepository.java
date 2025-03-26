package com.ims.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ims.entities.Supplier;

public interface SupplierRepository extends JpaRepository<Supplier, Integer> {
}
