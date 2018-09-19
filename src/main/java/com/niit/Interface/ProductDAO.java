package com.niit.Interface;

import java.util.List;

import com.niit.Model.Category;
import com.niit.Model.Product;


public interface ProductDAO
{
	public List<Product> findAllProducts();
	public Product findProductById(int ProductId);
	public Product findProductByName(String ProductName);
	public boolean addProduct(Product product);
	public boolean updateProduct(Product product);
	public boolean deleteProduct(int ProductId);
	List<Category> getAllCategories();

}
