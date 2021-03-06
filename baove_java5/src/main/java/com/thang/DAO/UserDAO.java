package com.thang.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.thang.entity.User;

public interface UserDAO extends JpaRepository<User, Integer>{


	@Query("SELECT o FROM User o WHERE o.username LIKE ?1")
	List<User> findByKeywords(String keywords);
//	@Query(value = "insert into users values(?1,?2,?3,?4,?5)", nativeQuery =true )
//	User insertUsers(String username , String password , String email, String date ,boolean nhanvien);
    


}
