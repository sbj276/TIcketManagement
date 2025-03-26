package com.ims.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ims.entities.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {
}