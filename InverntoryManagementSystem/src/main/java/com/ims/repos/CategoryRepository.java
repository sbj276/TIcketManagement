package com.ims.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ims.entities.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer> {
}