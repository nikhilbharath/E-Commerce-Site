package com.niit.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Min;


import org.springframework.web.multipart.MultipartFile;



@Entity

public class Product 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	int id;
	@org.hibernate.validator.constraints.NotEmpty(message="Productname cannot be empty")
	String productName;
	@org.hibernate.validator.constraints.NotEmpty(message="productdescription is mandatory")
	String productDescription;
	
	String productSize;
	@Min(value=1,message="Quantity cannot be less than 1")//user cannot give -ve values for quantity
	int productQuantity;
	
	@Min(value=1,message="Minimum value for price is 1")
	double productCost;
	
	
    @ManyToOne
	private Category category;
	
	@Transient
	private MultipartFile image;
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
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
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	
	public String getProductSize() {
		return productSize;
	}
	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}
	public int getProductQuantity() {
		return productQuantity;
	}
	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}
	public double getProductCost() {
		return productCost;
	}
	public void setProductCost(double productCost) {
		this.productCost = productCost;
	}
	

}

