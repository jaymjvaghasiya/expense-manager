package com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.CategoryEntity;
import com.entity.SubcategoryEntity;
import com.entity.UserEntity;
import com.repository.CategoryRepository;
import com.repository.SubcategoryRepository;
import com.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class SubcategoryController {

	@Autowired
	SubcategoryRepository subcategoryRepo;
	@Autowired
	CategoryRepository categoryRepo;
	@Autowired
	UserRepository userRepo;
	
	@GetMapping("listsubcategories")
	public String getListOfcategories(Model model, HttpSession session) {
		String email = (String) session.getAttribute("user_email");
		Optional<UserEntity> user = userRepo.findByEmail(email);
		String uid = user.get().getUserId();
		
		List<CategoryEntity> allCategories = categoryRepo.findAllByUser_UserId(uid);
		List<SubcategoryEntity> allSubcategories = subcategoryRepo.findAllByUser_UserId(uid);
		model.addAttribute("categories", allCategories);
		model.addAttribute("subcategories", allSubcategories);
		return "listSubcategories";
	}
	
	@GetMapping("addsubcategorypage")
	public String addCategoryPage() {
		return "addsubcategory";
	}
	
	@PostMapping("addsubcategory")
	public String addNewCategory(SubcategoryEntity subcategory, Model model, HttpSession session) {
		if(subcategory.getTitle() == null || subcategory.getTitle().trim().length() == 0) {
			model.addAttribute("msg", "Please Enter Vendor Title");
			return "redirect:/listsubcategories";
		}
		String email = (String) session.getAttribute("user_email");
		Optional<UserEntity> user = userRepo.findByEmail(email);
		UserEntity userEntity = user.get();
		Optional<CategoryEntity> category = categoryRepo.findByCategoryId(subcategory.getMainCategory());
		CategoryEntity categoryEntity = category.get();
		
		subcategory.setMainCategory(categoryEntity.getTitle());
		subcategory.setCategory(categoryEntity);
		subcategory.setUser(userEntity);
		subcategoryRepo.save(subcategory);

		return "redirect:/listsubcategories";
	}
	
	@GetMapping("deletesubcategory")
	public String deleteCategory(@RequestParam String subcategoryId) {
		subcategoryRepo.deleteById(subcategoryId);
		return "redirect:/listsubcategories";
	}
	
	@GetMapping("editsubcategory")
	public String editCategoryPage(@RequestParam String subcategoryId, Model model) {
		Optional<SubcategoryEntity> subcategory = subcategoryRepo.findBySubCatId(subcategoryId);
		model.addAttribute("subcategory", subcategory.get());
		List<CategoryEntity> allCategories = categoryRepo.findAll();
		model.addAttribute("categories", allCategories);
		return "editSubcategory";
	}
	
	@PostMapping("updatesubcategory")
	public String updateCategory(SubcategoryEntity subcategory, Model model, HttpSession session) {
		System.out.println("Vendor ID: " + subcategory.getSubCatId());
		if(subcategory.getTitle() == null || subcategory.getTitle().trim().length() == 0) {
			model.addAttribute("msg", "Please Enter Vendor Title");
			return "redirect:/listsubcategories";
		}
		Optional<CategoryEntity> category = categoryRepo.findByCategoryId(subcategory.getMainCategory());
		CategoryEntity categoryEntity = category.get();
		subcategory.setMainCategory(categoryEntity.getTitle());
		subcategory.setCategory(categoryEntity);
		subcategoryRepo.save(subcategory);

		return "redirect:/listsubcategories";
	}

	
}
