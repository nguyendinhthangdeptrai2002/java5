package com.thang.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.thang.entity.Account;



public interface AccountDAO extends JpaRepository<Account, String>{
}
