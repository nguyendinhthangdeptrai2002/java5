package com.thang.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.thang.entity.Khachhang;


public interface khachhangDAO extends JpaRepository<Khachhang, String>{

	
	@Query("SELECT o FROM Khachhang o WHERE o.hoten LIKE ?1")
	List<Khachhang> findByKeywords(String keywords);
}
