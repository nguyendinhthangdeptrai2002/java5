package com.phunglv.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.phunglv.entity.OrderDetail;



public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long>{
}