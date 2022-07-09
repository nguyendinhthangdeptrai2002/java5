package com.thang.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.thang.entity.Product;

public interface ProductDAO extends JpaRepository<Product , Integer>{

}
