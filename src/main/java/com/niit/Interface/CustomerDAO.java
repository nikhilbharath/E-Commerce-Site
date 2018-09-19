package com.niit.Interface;

import com.niit.Model.Customer;

public interface CustomerDAO 
{
	void registerCustomer(Customer customer);
	boolean isEmailUnique(String email);
}
