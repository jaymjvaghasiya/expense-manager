package com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.AccountEntity;
import com.entity.UserEntity;
import com.repository.AccountRepository;
import com.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class AccountController {

	@Autowired
	AccountRepository accountRepo;
	@Autowired
	UserRepository userRepo;
	
	@GetMapping("listaccounts")
	public String getListOfAccounts(Model model, HttpSession session) {
		String email = (String) session.getAttribute("user_email");
		Optional<UserEntity> user = userRepo.findByEmail(email);
		String uid = user.get().getUserId();
		
		List<AccountEntity> allAccounts = accountRepo.findAllByUser_UserId(uid);
		model.addAttribute("accounts", allAccounts);
		return "listAccount";
	}
	
	@GetMapping("addaccount")
	public String addAccountPage() {
		return "addAccount";
	}
	
	@PostMapping("addnewaccount")
	public String addNewAccount(AccountEntity account, Model model, HttpSession session) {
		if(account.getTitle() == null || account.getTitle().trim().length() == 0) {
			model.addAttribute("msg", "Please Enter Account Title");
			return "redirect:/addacount";
		}
		String email = (String) session.getAttribute("user_email");
		Optional<UserEntity> user = userRepo.findByEmail(email);
		UserEntity userEntity = user.get();
		account.setUser(userEntity);
		accountRepo.save(account);

		return "redirect:/listaccounts";
	}
	
	@GetMapping("deleteaccount")
	public String deleteAccount(@RequestParam String accountId) {
		accountRepo.deleteById(accountId);
		return "redirect:/listaccounts";
	}
	
	@GetMapping("editaccount")
	public String editAccountPage(@RequestParam String accountId, Model model) {
		Optional<AccountEntity> account = accountRepo.findById(accountId);
		model.addAttribute("account", account.get());
		return "editAccount";
	}
	
	@PostMapping("updateaccount")
	public String updateAccount(AccountEntity account, Model model, HttpSession session) {
		System.out.println("Account ID: " + account.getId());
		if(account.getTitle() == null || account.getTitle().trim().length() == 0) {
			model.addAttribute("msg", "Please Enter Account Title");
			return "redirect:/addacount";
		}
		accountRepo.save(account);

		return "redirect:/listaccounts";
	}
}
