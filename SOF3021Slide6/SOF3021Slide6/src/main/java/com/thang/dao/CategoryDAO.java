package com.thang.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.thang.entity.Category;



public interface CategoryDAO extends JpaRepository<Category, String>{
}
