package com.niit.Controller;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Interface.CategoryDAO;
import com.niit.Model.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO 
{
	
	@Autowired
	private SessionFactory sessionFactory;

	public List<Category> findAllCategorys() {
		return sessionFactory.getCurrentSession().createQuery("from Category").list();

	}

	public Category findCategoryById(int categoryId) {
		return (Category)sessionFactory.getCurrentSession().createQuery("from Category where CategoryId="+categoryId).uniqueResult();

	}

	public Category findCategoryByName(String categoryName) {
		return (Category)sessionFactory.getCurrentSession().createQuery("from Category where CategoryName='"+categoryName+"'").uniqueResult();
	}

	public boolean addCategory(Category category) {
		sessionFactory.getCurrentSession().save(category);
		return true;
	}

	public boolean updateCategory(Category category) {
		sessionFactory.getCurrentSession().update(category);
		return true;
	}

	public boolean deleteCategory(int categoryId) {
		sessionFactory.getCurrentSession().delete(findCategoryById(categoryId));	
		return true;
	}

}



