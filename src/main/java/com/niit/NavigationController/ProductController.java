package com.niit.NavigationController;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Interface.CategoryDAO;
import com.niit.Interface.ProductDAO;
import com.niit.Model.Category;
import com.niit.Model.Product;

@Controller
public class ProductController {
	@Autowired
	private ProductDAO productDao;
	@Autowired
	private CategoryDAO categoryDAO;
public ProductController(){
	System.out.println("ProductController Bean is Created");
}


@RequestMapping(value="/all/getallproducts")
public String getAllProducts(Model Model){
	List<Product> products=productDao.findAllProducts();
	//Attribute name is the Key - productList
	//value - List<Product> products is the data
	Model.addAttribute("productsList",products);
	//                 
	return "listofproducts";//logical view name
	//in listofproducts.jsp,access the Model attribute "productsList"
	
}

@RequestMapping(value="/all/getproduct/{id}")
public String getProduct(@PathVariable int id,Model Model){
	Product product=productDao.findProductById(id);
	Model.addAttribute("productObj",product);
	return "viewproduct";
}


@RequestMapping(value="/admin/deleteproduct/{id}")
public String deleteProduct(@PathVariable int id,Model Model,HttpServletRequest request){
	productDao.deleteProduct(id);
	Path path=Paths.get(request.getServletContext().getRealPath("/")+"/resources/images/"+id+".jpg");
	if(Files.exists(path)){
		try {
			Files.delete(path);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	return "redirect:/all/getallproducts";
}

@RequestMapping(value="/admin/getproductform")
public String getproductform(Model Model){
	Product p=new Product();
	Model.addAttribute("product",p);
	Model.addAttribute("categories",productDao.getAllCategories());
	//In productform, access  the values of all the properties of product p
	//in the form, p.getId(),p.getProductname(),p.getPrice(),p.getQuantity(),p.getProductdesc()
	return "productform";
}

/*@RequestMapping(value="/admin/addproduct")
public String addProduct(@ModelAttribute(name="product") Product product  ){
	productDao.addProduct(product);
	
	
	return "redirect:/all/getallproducts";
}*/



@RequestMapping(value="/admin/addproduct")
public String addProduct(@Valid @ModelAttribute(name="product") Product product,BindingResult result,Model Model ,HttpServletRequest request ) 
{
	//after validation, if result has any errors
	if(result.hasErrors())
	{//if it is true, result has errors
		
		Model.addAttribute("categories",productDao.getAllCategories());
		return "productform";
	}
	productDao.addProduct(product);
	MultipartFile img=product.getImage();
	System.out.println(request.getServletContext().getRealPath("/"));
	
	Path path=Paths.get(request.getServletContext().getRealPath("/")+"/resources/images/"+product.getId()+".jpg");
	//transfer the image to the file

	if(!img.isEmpty()&&img!=null){
		try {
			img.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	return "redirect:/all/getallproducts";
}



/*public String addCategory(@ModelAttribute(name="category") Category category  ){
	categoryDAO.addCategory(category);
	
	
	return "redirect:/all/getallproducts";
}
*/
@RequestMapping(value="/admin/getupdateform/{id}")
public String getUpdateProductForm(@PathVariable int id,Model Model){
	//how to get the product?
	Product product=productDao.findProductById(id);
	Model.addAttribute("product",product);
	Model.addAttribute("categories",productDao.getAllCategories());
	return "updateproductform";
}
@RequestMapping(value="/admin/updateproduct")
public String updateProduct(@Valid @ModelAttribute Product product,BindingResult result,Model Model,HttpServletRequest request)
{//product will have updated values
	  if(result.hasErrors()){
		   Model.addAttribute("categories",productDao.getAllCategories());
		   return "updateproductform";
	   }
	productDao.updateProduct(product);
	MultipartFile img=product.getImage();
	System.out.println(request.getServletContext().getRealPath("/"));
	//Defining a path
	Path path=Paths.get(request.getServletContext().getRealPath("/")+"/resources/images/"+product.getId()+".jpg");
	//transfer the image to the file
	if(!img.isEmpty()&&img!=null){
		try {
			img.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	return "redirect:/all/getallproducts";
}

@RequestMapping(value="/all/searchByCategory")
public String searchByCategory(@RequestParam String searchCondition ,Model Model){
	if(searchCondition.equals("All"))
		Model.addAttribute("searchCondition","");
	else
	Model.addAttribute("searchCondition",searchCondition);
	Model.addAttribute("productsList",productDao.findAllProducts());
	return "listofproducts";
	
}

}

