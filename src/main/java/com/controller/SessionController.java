package com.controller;

import java.io.File;
import java.io.IOException;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.services.MailServices;
import com.services.OtpGeneratorServices;
import com.services.ResetPasswordLink;
import com.entity.ExpenseEntity;
import com.entity.IncomeEntity;
import com.entity.UserEntity;
import com.google.gson.Gson;
import com.repository.ExpenseRepository;
import com.repository.IncomeRepository;
import com.repository.UserRepository;

import ch.qos.logback.core.util.FileUtil;
import jakarta.servlet.http.HttpSession;

@Controller
public class SessionController {

	@Autowired
	UserRepository userRepo;
	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	UserRepository userRepository;
	@Autowired
	OtpGeneratorServices generateOtp;
	@Autowired
	MailServices sendMail;
	@Autowired
	ResetPasswordLink resetPassLink;
	@Autowired
	IncomeRepository incomeRepo;
	@Autowired
	ExpenseRepository expenseRepo;
	
	@GetMapping("/")
	public String getLoginPage(HttpSession session) {
		session.removeAttribute("user_email");
		return "login";
	}
	
	@GetMapping("/signup")
	public String getSignupPage() {
		return "signin";
	}
	
	@GetMapping("/forgetpassword")
	public String getForgetPassPage() {
		return "forgetpass";
	}
	
	@GetMapping("/dashboard")
	public String getDashboard(Model model, HttpSession session) {
		calculateIncomeAndExpense(model, session);
		return "dashboard";
	}
	
	@GetMapping("/setpassword")
	public String getResetPassPage() {
		return "setpassword";
	}
	
	@GetMapping("/sidebar")
	public String getSideBar() {
		return "sidebar";
	}
	
	@PostMapping("createuser")
	public String createNewUser(@RequestParam String cnf_password, UserEntity user, Model model, @RequestParam MultipartFile profilePic, HttpSession session) {
		
		if(!user.getPassword().equals(cnf_password)) {
			model.addAttribute("passmsg", "Re-enter Password");
			return "signup";
		} else {
			try {
				Optional<UserEntity> userOpt = userRepository.findByEmail(user.getEmail());
				Optional<UserEntity> userOpt2 = userRepository.findByMobile(user.getEmail());
				if(userOpt.isPresent() || userOpt2.isPresent() ) {
					session.setAttribute("msg", "This Email and Mobile Number has been already registered.");
					return "redirect:/signup";
				}
				
				
				String filePath = "F:\\2.Royal\\Spring - Tejas Sir\\expence_manager\\src\\main\\webapp\\user_profile_image\\"+user.getEmail();
				String fileName = user.getFirstname()+"-"+user.getEmail()+"."+getFileExtension(profilePic.getOriginalFilename());
				File profileImage = new File(filePath, fileName);
				if(!profilePic.getContentType().startsWith("image")) {
					session.setAttribute("msg", "Image only accepted.");
					return "redirect:/signup";
				}
				FileUtils.writeByteArrayToFile(profileImage, profilePic.getBytes());
				user.setProfile_path("user_profile_image/"+user.getEmail()+"/"+fileName);
				user.setPassword(passwordEncoder.encode(user.getPassword()));
				
				LocalDateTime now = LocalDateTime.now(ZoneId.of("America/Chicago"));
		        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		        String created_at = now.format(formatter);
		   
		        user.setCreated_at(created_at);
			} catch(Exception e) {
				e.printStackTrace();
			}
			userRepository.save(user);
		}
		return "redirect:/";
	}
	
	@PostMapping("/authenticate")
	public String authenticateUser(@RequestParam String email, @RequestParam String password, Model model, HttpSession session) {
		Optional<UserEntity> user = userRepository.findByEmail(email);
		if(user.isEmpty()) {
			model.addAttribute("msg", "Email or Password is incorrect, please check !!!");
		} else {
			UserEntity userEntity = user.get(); 
			boolean flag = passwordEncoder.matches(password, userEntity.getPassword());
			if(flag) {
				session.setAttribute("user_email", userEntity.getEmail());
				session.setAttribute("user", userEntity);
				model.addAttribute("user", userEntity);
				if(userEntity.getRole().equalsIgnoreCase("admin"))
					return "adminDashboard";
				
				calculateIncomeAndExpense(model, session);
				
				return "dashboard";
			} else {
				model.addAttribute("msg", "Email or Password is incorrect, please check !!!");
			}
		}
		return "login";
	}
	
	@PostMapping("sendotp")
	public String sendOTP(@RequestParam String email, Model model) {
		Optional<UserEntity> user = userRepository.findByEmail(email);
		if(user == null) {
			model.addAttribute("nousermsg", "User does not exists.");
		} else {
			model.addAttribute("email", email);
			String otp = generateOtp.generateOTP(6);
			
			LocalDateTime now = LocalDateTime.now(ZoneId.of("America/Chicago"));
	        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
	        String otp_created_at = now.format(formatter);
	        
	        UserEntity userEntity = user.get();
	        userEntity.setOtp(otp);
	        userEntity.setOtp_created_at(otp_created_at);
	        userRepository.save(userEntity);
	        
			sendMail.sendSimpleEmail(email, otp);
		}
		return "otppage";
	}
	
	@PostMapping("sendresetasswordlink")
	public String sendResetPassLink(@RequestParam String email, Model model) {
		Optional<UserEntity> user = userRepository.findByEmail(email);
		if(user == null) {
			model.addAttribute("nousermsg", "User does not exists.");
		} else {
			model.addAttribute("email", email);
			String token = resetPassLink.generateResetPassToken();
			
			LocalDateTime now = LocalDateTime.now(ZoneId.of("America/Chicago"));
	        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
	        String otp_created_at = now.format(formatter);
	        
	        UserEntity userEntity = user.get();
	        userEntity.setToken(token);
	        userEntity.setOtp_created_at(otp_created_at);
	        userRepository.save(userEntity);
	        
	        sendMail.sendResetPassLinkEmail(email, token);
		}
		return "login";
	}
	
	@PostMapping("/checkotp")
	public String checkSubmittedOTP(@RequestParam("otp") String[] otpdigits, @RequestParam String email, Model model, HttpSession session) {
		StringBuilder otpsb = new StringBuilder();
		for(String digit : otpdigits) {
			otpsb.append(digit);
		}
		String otp = otpsb.toString();
		model.addAttribute("email", email);
		Optional<UserEntity> user = userRepository.findByEmail(email);
		UserEntity dbuser = user.get();
		
		if(!otp.equals(dbuser.getOtp())) {
			session.setAttribute("otpmsg", "Incorrect OTP, please try again");
			return "redirect:/otppage";
		}
		
		String otpCreatedAtString = dbuser.getOtp_created_at();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        LocalDateTime otp_created_at = LocalDateTime.parse(otpCreatedAtString, formatter);		
        LocalDateTime now = LocalDateTime.now(ZoneId.of("America/Chicago"));
        
        Duration duration = Duration.between(otp_created_at, now);
        Long inMinutes = duration.toMinutes();
        if(inMinutes > 10) {
        	session.setAttribute("otpmsg", "Your OTP has expired. Please Enter email again");
        	return "redirect:/forgetpassword";
        }
        
		return "setpassword";
	}
	
	@PostMapping("changepassword")
	public String changePassword(@RequestParam String password, @RequestParam String cnf_password, @RequestParam String email, Model model, HttpSession session) {
		
		if(!password.equals(cnf_password)) {
			session.setAttribute("msg", "Password does not match please enter again.");
			return "redirect:/setpassword";
		}
		
		model.addAttribute("email", email);
		Optional<UserEntity> user = userRepository.findByEmail(email);
		UserEntity userEntity = user.get();
		userEntity.setPassword(passwordEncoder.encode(password));
		userRepository.save(userEntity);
		
		
		return "redirect:/";
	}
	
	@PostMapping("changepass")
	public String changePasswordByLink(@RequestParam String password, @RequestParam String cnf_password, @RequestParam String token, Model model, HttpSession session) {
		
		if(!password.equals(cnf_password)) {
			session.setAttribute("msg", "Password does not match please enter again.");
			return "redirect:/setpassword";
		}
		
		model.addAttribute("email", token);
		Optional<UserEntity> user = userRepository.findByToken(token);
		UserEntity userEntity = user.get();
		userEntity.setPassword(passwordEncoder.encode(password));
		userEntity.setToken("");
		userRepository.save(userEntity);
		
		
		return "login";
	}
	
	@GetMapping("editprofile")	
	public String editProfilePage(Model model, HttpSession session) {
		String email = (String) session.getAttribute("user_email");
		Optional<UserEntity> user = userRepository.findByEmail(email);
		model.addAttribute("user", user.get());
		return "editUser";
	}
	
	@PostMapping("updateprofile")
	public String updateProfile(UserEntity user, @RequestParam MultipartFile profilePic, HttpSession session) {
		Optional<UserEntity> dbuser = userRepository.findByEmail(user.getEmail());
		
		if(profilePic != null && !profilePic.isEmpty()) {			
			String filePath = "F:\\2.Royal\\Spring - Tejas Sir\\expence_manager\\src\\main\\webapp\\user_profile_image\\"+user.getEmail();
			String fileName = user.getFirstname()+"-"+user.getEmail().substring(0, user.getEmail().lastIndexOf("@"))+"."+getFileExtension(profilePic.getOriginalFilename());
			File profileImage = new File(filePath, fileName);
			
			if(!profilePic.getContentType().startsWith("image")) {
				session.setAttribute("msg", "Image only accepted.");
				return "redirect:/signup";
			}
			try {
				FileUtils.writeByteArrayToFile(profileImage, profilePic.getBytes());
			} catch (IOException e) {
				e.printStackTrace();
			}
			dbuser.get().setProfile_path("user_profile_image/"+user.getEmail()+"/"+fileName);
		}
		dbuser.get().setFirstname(user.getFirstname());
		dbuser.get().setLastname(user.getLastname());
		dbuser.get().setEmail(user.getEmail());
		dbuser.get().setMobile(user.getMobile());
		
		userRepository.save(dbuser.get());
		
		session.setAttribute("user", dbuser.get());
		
		return "redirect:/dashboard";
	}
	
	public String getFileExtension(String filename) {
		if(filename != null && filename.contains(".")) {
			return filename.substring(filename.lastIndexOf(".")+1);
		}
		return "";
	}
	
	public void calculateIncomeAndExpense(Model model, HttpSession session) {
		
	    
	    // Define a formatter for "yyyy-MM-dd"
	    DateTimeFormatter formatter2 = DateTimeFormatter.ofPattern("yyyy-MM-dd");

	    // Format the current date
	    LocalDate currentDate = LocalDate.now().withDayOfMonth(LocalDate.now().lengthOfMonth());
	    String currentFormattedDate = currentDate.format(formatter2);

	    // Calculate the date 6 months ago and set it to the first day of that month
	    LocalDate sixthLastMonthDate = currentDate.minusMonths(6).withDayOfMonth(1);
	    String sixthLastFormattedDate = sixthLastMonthDate.format(formatter2);
	    

		String email = (String) session.getAttribute("user_email");
		Optional<UserEntity> user = userRepo.findByEmail(email);
		String uid = user.get().getUserId();
		
		List<IncomeEntity> incomes = incomeRepo.findAllByUserAndTDate(uid, sixthLastFormattedDate, currentFormattedDate);
		List<ExpenseEntity> expenses = expenseRepo.findAllByUserAndTDate(uid, sixthLastFormattedDate, currentFormattedDate);
		 
		Map<Integer, Double> monthIncomeMap =  new HashMap<>();
		Map<Integer, Double> monthExpenseMap =  new HashMap<>();
		
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		
		Set<Integer> allYearMonths = new TreeSet<>();
		
		for(IncomeEntity income : incomes) {
			String dateString = income.getTranscationData();
			LocalDate date = LocalDate.parse(dateString, formatter);
			String month = String.format("%02d", date.getMonthValue());
			Integer year = date.getYear();
			Integer yearMonth = Integer.parseInt(year + "" + month);
			
			allYearMonths.add(yearMonth);
			if(monthIncomeMap.containsKey(yearMonth)) {
				monthIncomeMap.put(yearMonth, monthIncomeMap.get(yearMonth) + income.getAmount());
			} else {				
				monthIncomeMap.put(yearMonth, income.getAmount());
			}
		}
		
		for(ExpenseEntity expense: expenses) {
			String dateString = expense.getTransactionDate();
			LocalDate date = LocalDate.parse(dateString, formatter);
			String month = String.format("%02d", date.getMonthValue());
			Integer year = date.getYear();
			Integer yearMonth = Integer.parseInt(year + "" + month);
			
			allYearMonths.add(yearMonth);
			if(monthExpenseMap.containsKey(yearMonth)) {
				monthExpenseMap.put(yearMonth, monthExpenseMap.get(yearMonth) + expense.getAmount());
			} else {				
				monthExpenseMap.put(yearMonth, expense.getAmount());
			}
		}
		
		for (Integer yearMonth : allYearMonths) {
		    monthIncomeMap.putIfAbsent(yearMonth, 0.00);
		    monthExpenseMap.putIfAbsent(yearMonth, 0.00);
		}
		
		Map<Integer, Double> sortedMonthIncomeMap = new TreeMap<>(monthIncomeMap);
		Map<Integer, Double> sortedMonthExpenseMap = new TreeMap<>(monthExpenseMap);

		model.addAttribute("incomes", new Gson().toJson(sortedMonthIncomeMap));
		model.addAttribute("expenses", new Gson().toJson(sortedMonthExpenseMap));
	}
}
