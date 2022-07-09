package com.thang.Dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.thang.entity.Account;





public interface AccountDAO extends JpaRepository<Account, String>{
}
