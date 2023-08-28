package com.ecommercewebsite.springBootProject.ecommercewebsite.homepage;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository  extends JpaRepository<UserEntity,Integer>{

	UserEntity findByUsername(String username);
	
	boolean existsByUsername(String username);
	
}
