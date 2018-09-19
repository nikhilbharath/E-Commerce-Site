package com.niit.NavigationController;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.Interface.CartItemDAO;
import com.niit.Interface.ProductDAO;
import com.niit.Model.CartItem;

@Controller
public class HomeController
{
	@Autowired
	private ProductDAO productDao;	
	 @Autowired
		private CartItemDAO cartItemDao;
	
	public HomeController()
	{
		System.out.println("Home Controller bean is instantiated");
	}
	
	@RequestMapping(value="/")
	public String getHomePage(HttpSession session,@AuthenticationPrincipal Principal principal)
	{
		session.setAttribute("categories",productDao.getAllCategories());
		/*String email=principal.getName();
		List<CartItem> cartItems=cartItemDao.getCart(email);
		session.setAttribute("cartSize",cartItems.size());*/
		return "Home";
	}
	
	@RequestMapping(value="/Login")
	public String getLoginPage()
	{
		
		return "Login";
	}
	@RequestMapping(value="/AboutUs")
	public String getAboutUsPage()
	{
		
		return "AboutUs";
	}
	/*@RequestMapping(value="/Register")
	public String getRegisterPage()
	{
		
		return "Register";
	}*/
	@RequestMapping(value="/ContactUs")
	public String getContactUsPage()
	{
		
		return "ContactUs";
	}
	
	@RequestMapping(value="/Product")
	public String getProductPage()
	{
		
		return "Product";
	}
	@RequestMapping(value="/loginerror")
	public String loginFailed(Model model){
		model.addAttribute("error","Invalid credentials..");
		return "Login";
	}
	@RequestMapping(value="/logout")
	public String logout(Model model){
		model.addAttribute("msg","Loggedout successfully...");
		return "Login";
	}
	

}
