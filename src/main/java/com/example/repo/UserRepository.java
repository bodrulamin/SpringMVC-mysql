package com.example.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.model.UserModel;

@Repository
public interface UserRepository extends JpaRepository<UserModel, Long>{
	

}
