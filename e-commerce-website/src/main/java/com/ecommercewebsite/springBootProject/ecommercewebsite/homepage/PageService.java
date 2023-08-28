package com.ecommercewebsite.springBootProject.ecommercewebsite.homepage;

import java.util.*;
import java.util.function.Predicate;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;


@Service
public class PageService {
	
	private org.slf4j.Logger logger =  LoggerFactory.getLogger(getClass());
	
//	private static int productsCount = 0;

	private static List<Page> products = new ArrayList<>();
//	static {
//		products.add(new Page(++productsCount, "Red Printed T-Shirt", "/images/product-1.jpg", "2,500.00","Manas"));
//		products.add(new Page(++productsCount, "Casual Shoes", "/images/product-2.jpg", "1,200.00","Manas"));
//		products.add(new Page(++productsCount, "Track Pant", "/images/product-3.jpg", "1,700.00","Manas"));
//		products.add(new Page(++productsCount, "Casual Shirt", "/images/product-4.jpg", "2,900.00","Manas"));
//		products.add(new Page(++productsCount, "White Sneakers", "/images/product-5.jpg", "3,500.00","Manas"));		
//		products.add(new Page(++productsCount, "Black plain T-Shirts", "/images/product-6.jpg", "500.00","Manas"));		
//		products.add(new Page(++productsCount, "Socks", "/images/product-7.jpg", "200.00","Manas"));		
//		products.add(new Page(++productsCount, "Analog Watch", "/images/product-8.jpg", "1,900.00","Manas"));
//		products.add(new Page(++productsCount, "Digital Watch", "/images/product-9.jpg", "2,100.00","Manas"));		
//		products.add(new Page(++productsCount, "Black Sneakers", "/images/product-10.jpg", "7,500.00","Manas"));
//		products.add(new Page(++productsCount, "White shoes", "/images/product-11.jpg", "1,500.00","Manas"));
//		products.add(new Page(++productsCount, "Sports pants", "/images/product-12.jpg", "800.00","Manas"));	
//	}
	
	public List<Page> findByUsername(String username) {
		logger.info("got array as "+ products);
 		Predicate<? super Page> predicate = page -> page.getUsername().equalsIgnoreCase(username);
		return products.stream().filter(predicate).toList();
	}
	
	public void updateTodo(Page page) {
		deleteById(page.getId());
		products.add(page);
	}
	
	public List<Page> findByProductNameContaining(String inputString){
		Predicate<? super Page> predicate = page -> page.getProductName().matches(inputString);
		return products.stream().filter(predicate).toList();
	}
	
//	public void addTodo(String productName,String imagePath,String price) {
//		Page page = new Page(++productsCount,productName,imagePath,price,"Manas");
//		products.add(page);
//	}
	
	public void deleteById(int id) {
 		Predicate<? super Page> predicate = page -> page.getId() == id;
		products.removeIf(predicate);
	}

}

