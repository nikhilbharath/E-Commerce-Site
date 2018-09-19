package com.niit.Interface;

import java.util.List;

import com.niit.Model.CartItem;
import com.niit.Model.CustomerOrder;
import com.niit.Model.User;

public interface CartItemDAO
{
void addToCart(CartItem cartItem);

User getUser(String email);

List<CartItem>  getCart(String email);//select * from cartitem where user_email=?

void removeCartItem(int cartItemId);

CustomerOrder createCustomerOrder(CustomerOrder customerOrder);
}

