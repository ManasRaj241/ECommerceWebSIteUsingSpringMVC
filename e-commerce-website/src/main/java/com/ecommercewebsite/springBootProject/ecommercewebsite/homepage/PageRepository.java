package com.ecommercewebsite.springBootProject.ecommercewebsite.homepage;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PageRepository extends JpaRepository<Page, Integer>{
	
	public List<Page> findByUsername(String username);

	public List<Page> findByProductNameContainingIgnoreCase(String inputString);

	public Page findById(int quantity);

}
