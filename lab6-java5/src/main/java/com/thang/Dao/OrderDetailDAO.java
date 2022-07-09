package com.thang.Dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.thang.entity.OrderDetail;





public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long>{
}