package com.controller;

import java.time.Duration;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Services.MailServices;
import com.Services.OtpGeneratorServices;
import com.entity.UserEntity;
import com.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class SessionController {

	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	UserRepository userRepository;
	@Autowired
	OtpGeneratorServices generateOtp;
	@Autowired
	MailServices sendMail;
	
	@GetMapping("/")
	public String getLoginPage(HttpSession session) {
		session.removeAttribute("user_email");
		return "login";
	}
	
	@GetMapping("/signin")
	public String getSigninPage() {
		return "signin";
	}
	
	@GetMapping("/forgetpassword")
	public String getForgetPassPage() {
		return "forgetpass";
	}
	
	@GetMapping("/dashboard")
	public String getDashboard() {
		return "dashboard";
	}
	
	@PostMapping("createuser")
	public String createNewUser(@RequestParam String cnf_password, UserEntity user, Model model) {
		
		if(!user.getPassword().equals(cnf_password)) {
			model.addAttribute("passmsg", "Re-enter Password");
			return "signin";
		} else {
			try {
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
		return "/";
	}
	
	@PostMapping("/authenticate")
	public String authenticateUser(@RequestParam String email, @RequestParam String password, Model model, HttpSession session) {
		Optional<UserEntity> user = userRepository.findByEmail(email);
		if(user == null) {
			model.addAttribute("nousermsg", "User doen not exists.");
		} else {
			UserEntity userEntity = user.get(); 
			boolean flag = passwordEncoder.matches(password, userEntity.getPassword());
			if(flag) {
				session.setAttribute("user_email", userEntity.getEmail());
				return "dashboard";
			} else {
				model.addAttribute("passmsg", "Password does not match please try again.");
			}
		}
		return "/";
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
	
	@GetMapping("editprofile")	
	public String editProfilePage(Model model, HttpSession session) {
		String email = (String) session.getAttribute("user_email");
		Optional<UserEntity> user = userRepository.findByEmail(email);
		model.addAttribute("user", user.get());
		return "editUser";
	}
	
	@PostMapping("updateprofile")
	public String updateProfile(UserEntity user) {
		Optional<UserEntity> dbuser = userRepository.findByEmail(user.getEmail());
		dbuser.get().setFirstname(user.getFirstname());
		dbuser.get().setLastname(user.getLastname());
		dbuser.get().setEmail(user.getEmail());
		dbuser.get().setMobile(user.getMobile());
		
		userRepository.save(dbuser.get());
		
		return "redirect:/dashboard";
	}
}
