package com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.AccountEntity;
import com.entity.CategoryEntity;
import com.entity.ExpenseEntity;
import com.entity.SubcategoryEntity;
import com.entity.UserEntity;
import com.entity.VendorEntity;
import com.repository.AccountRepository;
import com.repository.CategoryRepository;
import com.repository.ExpenseRepository;
import com.repository.SubcategoryRepository;
import com.repository.UserRepository;
import com.repository.VendorRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class ExpenseController {

	@Autowired
	UserRepository userRepo;
	@Autowired
	AccountRepository accountRepo;
	@Autowired
	VendorRepository vendorRepo;
	@Autowired
	CategoryRepository categoryRepo;
	@Autowired
	SubcategoryRepository subcategoryRepo;
	@Autowired
	ExpenseRepository expenseRepo;
	
	
	@GetMapping("listexpenses")
	public String getListExpenses(Model model) {
		
		List<ExpenseEntity> expenses = expenseRepo.findAll();
		model.addAttribute("expenses", expenses);
		
		List<AccountEntity> accounts = accountRepo.findAll();
		model.addAttribute("accounts", accounts);
		
		List<VendorEntity> vendors = vendorRepo.findAll();
		model.addAttribute("vendors", vendors);
		
		List<CategoryEntity> categories = categoryRepo.findAll();
		model.addAttribute("categories", categories);
		
		List<SubcategoryEntity> subcategories = subcategoryRepo.findAll();
		model.addAttribute("subcategories", subcategories);
		
		return "listExpenses";
	}
	
	@PostMapping("addnewexpense")
	public String addNewExpense(ExpenseEntity expense, Model model, 
								@RequestParam String account_no,
								@RequestParam String vendor_no,
								@RequestParam String category_no,
								@RequestParam String subcategory_no,
								HttpSession session) {
		
		if(expense.getTitle() == null || expense.getTitle().trim().length() == 0) {
			model.addAttribute("msg", "Please Enter Expense Title");
			return "redirect:/listexpenses";
		}
		String email = (String) session.getAttribute("user_email");
		Optional<UserEntity> user = userRepo.findByEmail(email);
		Optional<AccountEntity> account = accountRepo.findById(account_no);
		Optional<VendorEntity> vendor = vendorRepo.findByVendorId(vendor_no);
		Optional<CategoryEntity> category = categoryRepo.findByCategoryId(category_no);
		Optional<SubcategoryEntity> subcategory = subcategoryRepo.findBySubCatId(subcategory_no);
		
		expense.setUser(user.get());
		expense.setAccount(account.get());
		expense.setVendor(vendor.get());
		expense.setCategory(category.get());
		expense.setSubcategory(subcategory.get());
		
		expenseRepo.save(expense);
		
		return "redirect:/listexpenses";
	}
	
	@GetMapping("deleteexpense")
	public String deleteExpense(@RequestParam String expenseId) {
		expenseRepo.deleteById(expenseId);
		return "redirect:/listexpenses";
	}
	
	@GetMapping("editexpense")
	public String editExpense(@RequestParam String expenseId, Model model) {
		Optional<ExpenseEntity> expense = expenseRepo.findByExpenseId(expenseId);
		model.addAttribute("expense", expense.get());
		
		List<AccountEntity> accounts = accountRepo.findAll();
		model.addAttribute("accounts", accounts);
		
		List<VendorEntity> vendors = vendorRepo.findAll();
		model.addAttribute("vendors", vendors);
		
		List<CategoryEntity> categories = categoryRepo.findAll();
		model.addAttribute("categories", categories);
		
		List<SubcategoryEntity> subcategories = subcategoryRepo.findAll();
		model.addAttribute("subcategories", subcategories);
		
		return "editExpense";
	}
	
	@PostMapping("updateexpense")
	public String updateExpense(ExpenseEntity expense, Model model, 
			@RequestParam String account_no,
			@RequestParam String vendor_no,
			@RequestParam String category_no,
			@RequestParam String subcategory_no,
			HttpSession session) {
		
		if(expense.getTitle() == null || expense.getTitle().trim().length() == 0) {
			model.addAttribute("msg", "Please Enter Expense Title");
			return "redirect:/listexpenses";
		}
		
		Optional<AccountEntity> account = accountRepo.findById(account_no);
		Optional<VendorEntity> vendor = vendorRepo.findByVendorId(vendor_no);
		Optional<CategoryEntity> category = categoryRepo.findByCategoryId(subcategory_no);
		Optional<SubcategoryEntity> subcategory = subcategoryRepo.findBySubCatId(subcategory_no);
		
		expense.setAccount(account.get());
		expense.setVendor(vendor.get());
		expense.setCategory(category.get());
		expense.setSubcategory(subcategory.get());
		
		expenseRepo.save(expense);
		
		return "redirect:/listexpenses";
	}
}
