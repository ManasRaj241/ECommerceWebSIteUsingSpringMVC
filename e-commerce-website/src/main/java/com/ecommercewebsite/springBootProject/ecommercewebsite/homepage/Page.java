package com.ecommercewebsite.springBootProject.ecommercewebsite.homepage;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Size;

@Entity
public class Page {

public Page() {
		
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String productName;
	private String username;
	@Size(min=10, message="Enter atleast 6 characters")
	private String imagePath;
	private String price;
	
	
	
	public Page(int id,String productName, String imagePath, String price, String username) {
		super();
		this.productName = productName;
		this.username = username;
		this.imagePath = imagePath;
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "Page [id=" + id + ", username=" + username +", ProductName=" + productName + ", imagePath=" + imagePath + ", Price=" + price
				+ "]";
	}	
	
}
