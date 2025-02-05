package com.controller;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.ExpenseEntity;
import com.entity.UserEntity;
import com.repository.UserRepository;
import com.services.ExtractReportService;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class ReportController {
	
	@Autowired
	UserRepository userRepo;
	@Autowired
	ExtractReportService extractReport;

	@PostMapping("downloadreport")
	public String getExpenseReport(@RequestParam String days, HttpSession session, HttpServletResponse response) {
		 LocalDate endDate = LocalDate.now();
	     LocalDate startDate = null;
	     
	     switch(days) {
	     	case "30" : 
	     		startDate = endDate.minusDays(30);
	     		break;
	     	case "90" :
	     		startDate = endDate.minusDays(90);
	     		break;
	     	case "6" :
	     		startDate = endDate.minusMonths(6);
	     		break;
	     	case "1" :
	     		startDate = LocalDate.of(endDate.getYear() - 1, 1, 1);
	     		endDate = LocalDate.of(endDate.getYear() - 1, 12, 31);
	     		break;
	     	default:
	     		throw new IllegalArgumentException("Invalide Days parameter");
	     }
	     
	     String email = (String) session.getAttribute("user_email");
	     Optional<UserEntity> user = userRepo.findByEmail(email);
	     if(user.isEmpty()) {
	    	 return "redirect:/dashboard";
	     }
	     String userId = user.get().getUserId();
	     
	     List<ExpenseEntity> expenses = extractReport.getExpenseBetweenDates(userId, startDate.toString(), endDate.toString());
	     extractReport.generateExpenseReport(expenses, response);
	     
	     return "redirect:/dashboard";
	}
}
