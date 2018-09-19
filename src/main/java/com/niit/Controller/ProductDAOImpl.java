package com.niit.Controller;

import java.sql.Connection;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Interface.ProductDAO;
import com.niit.Model.Category;
import com.niit.Model.Product;


@Repository("productDAO")
@Transactional

public class ProductDAOImpl implements ProductDAO {

	Connection con;
	@Autowired
	private SessionFactory sessionFactory;
	
	public boolean addProduct(Product product) {
		
		sessionFactory.getCurrentSession().save(product);
		
		return true;
	}
	
	public List<Product> findAllProducts() {
		return sessionFactory.getCurrentSession().createQuery("from Product").list();
		
	}

	public Product findProductById(int ProductId) {
		return (Product)sessionFactory.getCurrentSession().createQuery("from Product where Id="+ProductId).uniqueResult();
	}

	public Product findProductByName(String ProductName) {
		return (Product)sessionFactory.getCurrentSession().createQuery("from Product where ProductName='"+ProductName+"'").uniqueResult();
	}

	public boolean updateProduct(Product product) {
		sessionFactory.getCurrentSession().update(product);
		return true;
	}

	public boolean deleteProduct(int ProductId) {
		sessionFactory.getCurrentSession().delete(findProductById(ProductId));	
		return true;
	}
	public List<Category> getAllCategories() {
		return sessionFactory.getCurrentSession().createQuery("from Category").list();
		/*Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Category");
		List<Category> categories=query.list();
		return categories;*/
	}
	

	
}
