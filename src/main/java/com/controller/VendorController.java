package com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.VendorEntity;
import com.entity.UserEntity;
import com.repository.UserRepository;
import com.repository.VendorRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class VendorController {

	@Autowired
	VendorRepository vendorRepo;
	@Autowired
	UserRepository userRepo;
	
	@GetMapping("listvendors")
	public String getListOfAccounts(Model model, HttpSession session) {
		String email = (String) session.getAttribute("user_email");
		Optional<UserEntity> user = userRepo.findByEmail(email);
		String uid = user.get().getUserId();
		
		List<VendorEntity> allVendors = vendorRepo.findAllByUser_UserId(uid);
		model.addAttribute("vendors", allVendors);
		return "listVendors";
	}
	
	@GetMapping("addvendorpage")
	public String addAccountPage() {
		return "addvendor";
	}
	
	@PostMapping("addvendor")
	public String addNewAccount(VendorEntity vendor, Model model, HttpSession session) {
		if(vendor.getTitle() == null || vendor.getTitle().trim().length() == 0) {
			model.addAttribute("msg", "Please Enter Vendor Title");
			return "redirect:/listvendors";
		}
		String email = (String) session.getAttribute("user_email");
		Optional<UserEntity> user = userRepo.findByEmail(email);
		UserEntity userEntity = user.get();
		vendor.setUser(userEntity);
		vendorRepo.save(vendor);

		return "redirect:/listvendors";
	}
	
	@GetMapping("deletevendor")
	public String deleteAccount(@RequestParam String vendorId) {
		vendorRepo.deleteById(vendorId);
		return "redirect:/listvendors";
	}
	
	@GetMapping("editvendor")
	public String editAccountPage(@RequestParam String vendorId, Model model) {
		Optional<VendorEntity> vendor = vendorRepo.findByVendorId(vendorId);
		model.addAttribute("vendor", vendor.get());
		return "editVendor";
	}
	
	@PostMapping("updatevendor")
	public String updateAccount(VendorEntity vendor, Model model, HttpSession session) {
		System.out.println("Vendor ID: " + vendor.getVendorId());
		if(vendor.getTitle() == null || vendor.getTitle().trim().length() == 0) {
			model.addAttribute("msg", "Please Enter Vendor Title");
			return "redirect:/listvendors";
		}
		vendorRepo.save(vendor);

		return "redirect:/listvendors";
	}

}
