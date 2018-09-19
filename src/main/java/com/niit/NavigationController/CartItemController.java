package com.niit.NavigationController;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.Interface.CartItemDAO;
import com.niit.Interface.ProductDAO;
import com.niit.Model.CartItem;
import com.niit.Model.Customer;
import com.niit.Model.CustomerOrder;
import com.niit.Model.Product;
import com.niit.Model.ShippingAddress;
import com.niit.Model.User;

@Controller
public class CartItemController {
	@Autowired
private CartItemDAO cartItemDAO;
	@Autowired
	private ProductDAO productDAO;
    @RequestMapping(value="/cart/addtocart/{Id}")//5
	public String addToCart(@PathVariable int Id,@RequestParam int requestedQuantity
			,@AuthenticationPrincipal Principal principal){//in jsp userPrincipal, in controller Principal
    	if(principal==null)
    		return "Login";
		String email=principal.getName();
		Product product=productDAO.findProductById(Id);
		User user=cartItemDAO.getUser(email);
		List<CartItem> cartItems=cartItemDAO.getCart(email);
		for(CartItem cartItem:cartItems){
			if(cartItem.getProduct().getId()==Id){
				cartItem.setQuantity(requestedQuantity);
				cartItem.setTotalPrice(requestedQuantity*product.getProductCost());
				cartItemDAO.addToCart(cartItem);//update the quantity and totalprice
				return "redirect:/cart/getcart";
			}
		}
		
		CartItem cartItem=new CartItem();
		cartItem.setQuantity(requestedQuantity);
        cartItem.setProduct(product);
        cartItem.setUser(user);
        double totalPrice=requestedQuantity *product.getProductCost();
        cartItem.setTotalPrice(totalPrice);
        cartItemDAO.addToCart(cartItem);
    	return "redirect:/cart/getcart";
	}
    @RequestMapping(value="/cart/getcart")
    public String getCart(@AuthenticationPrincipal Principal principal,Model Model,HttpSession session){
    	if(principal==null)
    		return "Login";
    	String email=principal.getName();
    	List<CartItem> cartItems=cartItemDAO.getCart(email);
    	Model.addAttribute("cartItems",cartItems);
    	session.setAttribute("cartSize", cartItems.size());
    	return "cart";
    }
    @RequestMapping(value="/cart/removecartitem/{cartItemId}")
    public String removeCartItem(@PathVariable int cartItemId){
    	cartItemDAO.removeCartItem(cartItemId);
    	//delete from cartItem where cartitemid=?
    	return "redirect:/cart/getcart";
    	
    	//select * from cartitem where user_email=? - to execute the query redirect /cart/getcart
    }
    @RequestMapping(value="/cart/clearcart")
    public String clearCart(@AuthenticationPrincipal Principal principal){
    	//Get list of cartItems 
    	List<CartItem> cartItems=cartItemDAO.getCart(principal.getName());
    	for(CartItem cartItem:cartItems){
    		cartItemDAO.removeCartItem(cartItem.getCartItemId());
    		//delete from cartItem where cartItemid=?
    	}
    	return "redirect:/cart/getcart";
    }
    @RequestMapping(value="/cart/shippingaddressform")
    public String getShippingAddressForm(@AuthenticationPrincipal Principal principal,Model Model){
    	if(principal==null)
    		return "Login";
    	String email=principal.getName();
    	User user=cartItemDAO.getUser(email);
    	Customer customer=user.getCustomer();
    	ShippingAddress shippingAddress=customer.getShippingaddress();
    	Model.addAttribute("shippingaddress",shippingAddress);
    	return "shippingaddress";
    }
    @RequestMapping(value="/cart/createorder")
    public String createCustomerOrder(@ModelAttribute ShippingAddress shippingaddress,
    		Model Model,
    		@AuthenticationPrincipal Principal principal,HttpSession session){
    	String email=principal.getName();
    	User user=cartItemDAO.getUser(email);
    	
    	Customer customer=user.getCustomer();
    	customer.setShippingaddress(shippingaddress);//customer.shippingaddress -> updated shippingaddress obj
    	customer.setUser(user);
    	user.setCustomer(customer);//user.customer -> updated customer references
    	
    	
    	List<CartItem> cartItems=cartItemDAO.getCart(email);
    	
    	for(CartItem cartItem:cartItems){
    		Product product=cartItem.getProduct();
    		if((product.getProductQuantity()-cartItem.getQuantity())<0){
    			cartItemDAO.removeCartItem(cartItem.getCartItemId());
    			Model.addAttribute("productNA",product);
    			return "productnotavailable";
    		}
    	}
    	
    	//Calculate grandTotal
    	
    	double grandTotal=0;
    	for(CartItem cartItem:cartItems){//for(T o:collection)
    		grandTotal=grandTotal+cartItem.getTotalPrice();
    	}
    	
    	//create CustomerOrder object
    	CustomerOrder customerOrder=new CustomerOrder();
    	customerOrder.setPurchaseDate(new Date());
    	customerOrder.setUser(user);//customerOrder -> user -> customer -> shippingaddress
    	customerOrder.setGrandTotal(grandTotal);
    	if(cartItems.size()>0)
    	 customerOrder=cartItemDAO.createCustomerOrder(customerOrder);
    	 
    	 
    	//Remove all cartitems from the cartItem table
    	//decrement the quantity of the product
    	//add customerorder and List<CartItem> to an Model attributes and return "orderdetails"
    	 
    	for(CartItem cartItem:cartItems){
    		Product product=cartItem.getProduct();
    		//In stock =30
    		//requested quantity=20
    		//update product quantity=30-20 where id=?
    		product.setProductQuantity(product.getProductQuantity() - cartItem.getQuantity());//decrement the product quantity
    		productDAO.updateProduct(product);//update product set quantity=7 where id=38
    		cartItemDAO.removeCartItem(cartItem.getCartItemId());
    	}
    	Model.addAttribute("customerorder",customerOrder);//order=[orderId,purchaseDate,grandTotal,User]
    	Model.addAttribute("cartItems",cartItems);
    	session.setAttribute("cartSize", 0);
    	return "orderDetails";
    }
}




