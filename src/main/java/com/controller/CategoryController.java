package com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.UserEntity;
import com.entity.CategoryEntity;
import com.repository.UserRepository;
import com.repository.CategoryRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryRepository categoryRepo;
	@Autowired
	UserRepository userRepo;
	
	@GetMapping("listcategories")
	public String getListOfcategories(Model model, HttpSession session) {
		String email = (String) session.getAttribute("user_email");
		Optional<UserEntity> user = userRepo.findByEmail(email);
		String uid = user.get().getUserId();
		
		List<CategoryEntity> allCategories = categoryRepo.findAllByUser_UserId(uid);
		model.addAttribute("categories", allCategories);
		return "listCategories";
	}
	
	@GetMapping("addcategorypage")
	public String addCategoryPage() {
		return "addcategory";
	}
	
	@PostMapping("addcategory")
	public String addNewCategory(CategoryEntity category, Model model, HttpSession session) {
		if(category.getTitle() == null || category.getTitle().trim().length() == 0) {
			model.addAttribute("msg", "Please Enter Vendor Title");
			return "redirect:/listcategories";
		}
		String email = (String) session.getAttribute("user_email");
		Optional<UserEntity> user = userRepo.findByEmail(email);
		UserEntity userEntity = user.get();
		category.setUser(userEntity);
		categoryRepo.save(category);

		return "redirect:/listcategories";
	}
	
	@GetMapping("deletecategory")
	public String deleteCategory(@RequestParam String categoryId) {
		categoryRepo.deleteById(categoryId);
		return "redirect:/listcategories";
	}
	
	@GetMapping("editcategory")
	public String editCategoryPage(@RequestParam String categoryId, Model model) {
		Optional<CategoryEntity> category = categoryRepo.findByCategoryId(categoryId);
		model.addAttribute("category", category.get());
		return "editCategory";
	}
	
	@PostMapping("updatecategory")
	public String updateCategory(CategoryEntity category, Model model, HttpSession session) {
		System.out.println("Vendor ID: " + category.getCategoryId());
		if(category.getTitle() == null || category.getTitle().trim().length() == 0) {
			model.addAttribute("msg", "Please Enter Vendor Title");
			return "redirect:/listcategories";
		}
		categoryRepo.save(category);

		return "redirect:/listcategories";
	}

	
}
