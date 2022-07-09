package com.thang.Dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.thang.entity.Order;





public interface OrderDAO extends JpaRepository<Order, Long>{
}
