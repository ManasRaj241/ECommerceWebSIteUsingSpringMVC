package com.ecommercewebsite.springBootProject.ecommercewebsite.homepage;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("username")
public class HomePageController {
	
//	 private org.slf4j.Logger logger =  LoggerFactory.getLogger(getClass());
	
	private PageRepository pageRepository;
	private UserRepository userRepository;
	
	@Autowired
	public HomePageController(PageRepository pageRepository,UserRepository userRepository) {
		super();
		this.pageRepository = pageRepository;
		this.userRepository = userRepository;
	}

	
	
	@RequestMapping("/products")
	public String products(ModelMap model) {
		String username = "Manas";
		List<Page> products = pageRepository.findByUsername(username);
		model.addAttribute("products", products);
		return "productsPage";
	}
	
	@RequestMapping("/product-details")
	public String productDetailsPage() {
		return "productDetails";
	}
	
	@RequestMapping("/searched-product")
	public String searchedProducts(@RequestParam String inputString,ModelMap model) {
		List<Page> products = pageRepository.findByProductNameContainingIgnoreCase(inputString);
		model.addAttribute("searchedProducts", products);
		return "searchedProductPage";
	}
	
	@RequestMapping("/cart")
	public String cartPage(@RequestParam String quantity,ModelMap model) {
		Page products = pageRepository.findById(1);
		model.addAttribute("cartProduct", products);
		model.addAttribute("productQuantity", quantity);
		return "cart";
	}
	
	@RequestMapping("/admin")
	public String adminProductPage(ModelMap model) {
		String username = "Manas";
		List<Page> products = pageRepository.findByUsername(username);
		model.addAttribute("products", products);
		return "admin";
	}
	
	
	
	
	@RequestMapping(value = "update-page", method = RequestMethod.GET)
	public String showUpdateTodoPage(@RequestParam int id, ModelMap model) {
//		Todo todo = todoService.findById(id);
		Page page = pageRepository.findById(id); 
		model.addAttribute("page", page);
		return "page";
	}

	@RequestMapping(value = "update-page", method = RequestMethod.POST)
	public String updateTodo(Page page,ModelMap model) {
		String username = "Manas";
		page.setUsername(username);
		pageRepository.save(page);
		return "redirect:admin";
	}
	
	@RequestMapping("delete-page")
	public String deleteTodo(@RequestParam int id) {
		pageRepository.deleteById(id);
		return "redirect:admin";
	}

	@RequestMapping(value="/",method= RequestMethod.GET)
	public String accountPage(ModelMap model) {
		UserEntity user = new UserEntity(0,"","","");
		model.put("user",user);
		return "loginUser";
	}
	
	@RequestMapping(value="/add-product",method= RequestMethod.GET)
	public String showAddPage(ModelMap model) {
		Page page = new Page(0,"","/images/","","Manas");
		model.put("page", page);
		return "page";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String registerPage(ModelMap model) {
		UserEntity user = new UserEntity(0,"","","user");
		model.put("user",user);
		return "register";
	}
	
	@RequestMapping(value="/register", method= RequestMethod.POST)
	public String loginPage(ModelMap map, UserEntity user) {
		String role = "user";
		user.setRole(role);
		userRepository.save(user);
		return "redirect:/";
	}	
	
	@RequestMapping(value="/add-product",method= RequestMethod.POST)
	public String addAddPage(ModelMap model, Page page) {
		String username = "Manas";
		page.setUsername(username);
		pageRepository.save(page);
		return "redirect:admin";
	}
	
	@RequestMapping(value="/", method=RequestMethod.POST)
	public String homePage(ModelMap map, UserEntity user, BindingResult result) {
		if (result.hasErrors()) {
			return "loginUser";
		}
		UserEntity x = userRepository.findByUsername(user.getUsername());
		if(x.getRole().equals("admin")) {
			return "redirect:adminhomepage";
		}
		return "redirect:homepage";
	}
	
	@RequestMapping("/homepage")
	public String userHomePage() {
		return "homePage";
	}
	
	@RequestMapping("/adminhomepage")
	public String adminHomePage() {
		return "AdminHomePage";
	}
}
