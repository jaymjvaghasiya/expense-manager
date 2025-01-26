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
import com.entity.IncomeEntity;
import com.entity.UserEntity;
import com.repository.AccountRepository;
import com.repository.IncomeRepository;
import com.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class IncomeController {
	
	@Autowired
	UserRepository userRepo;
	@Autowired
	AccountRepository accountRepo;
	@Autowired
	IncomeRepository incomeRepo;
	
	@GetMapping("listincomes")
	public String getAllIncomes(Model model, HttpSession session) {
		String email = (String) session.getAttribute("user_email");
		Optional<UserEntity> user = userRepo.findByEmail(email);
		String uid = user.get().getUserId();
		
		List<IncomeEntity> allIncomes = incomeRepo.findAllByUser_UserId(uid);
		List<AccountEntity> allAccounts = accountRepo.findAllByUser_UserId(uid);
		model.addAttribute("incomes", allIncomes);
		model.addAttribute("accounts", allAccounts);
		return "listIncomes";
	}
	
	@PostMapping("addnewincome")
	public String addNewIncome(IncomeEntity income, @RequestParam String account_no, Model model, HttpSession session) {
		if(income.getTitle() == null || income.getTitle().trim().length() == 0) {
			model.addAttribute("msg", "Please Enter Account Title");
			return "redirect:/addnewincome";
		}
		String email = (String) session.getAttribute("user_email");
		Optional<UserEntity> user = userRepo.findByEmail(email);
		UserEntity userEntity = user.get();
		Optional<AccountEntity> account = accountRepo.findById(account_no);
		AccountEntity accountEntity = account.get();
		
		Double totalAmount = accountEntity.getAmount() + income.getAmount();
		accountEntity.setAmount(totalAmount);
		
		income.setAccount(accountEntity);
		income.setUser(userEntity);
		incomeRepo.save(income);

		return "redirect:/listincomes";
	}
	
	@GetMapping("deleteincome")
	public String deleteIncome(@RequestParam String incomeId) {
		incomeRepo.deleteById(incomeId);
		return "redirect:/listincomes";
	}
	
	@GetMapping("editincome")
	public String editIncome(@RequestParam String incomeId, Model model) {
		Optional<IncomeEntity> income = incomeRepo.findByIncomeId(incomeId);
		List<AccountEntity> allAccounts = accountRepo.findAll();
		model.addAttribute("accounts", allAccounts);
		model.addAttribute("income", income.get());
		return "editIncome";
	}
	
	@PostMapping("updateincome")
	public String updateIncome(IncomeEntity income, @RequestParam String account_no, Model model, HttpSession session) {
		System.out.println("Income ID: " + income.getIncomeId());
		if(income.getTitle() == null || income.getTitle().trim().length() == 0) {
			model.addAttribute("msg", "Please Enter Account Title");
			return "redirect:/addnewincome";
		}

		Optional<AccountEntity> account = accountRepo.findById(account_no);
		AccountEntity accountEntity = account.get();
		income.setAccount(accountEntity);
		
		incomeRepo.save(income);
		return "redirect:/listincomes";
	}
}
