package com.services;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.ExpenseEntity;
import com.repository.ExpenseRepository;

import jakarta.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

@Service
public class ExtractReportService {

	@Autowired
	private ExpenseRepository expenserepo;
	
	public List<ExpenseEntity> getExpenseBetweenDates(String userId, String startDate, String endDate) {
		List<ExpenseEntity> expenses = expenserepo.findAllByUserAndTDate(userId, startDate, endDate);
		return expenses;
	}
	
	public void generateExpenseReport(List<ExpenseEntity> expenses, HttpServletResponse response) {
		try {
            // Load the Jasper Report template
            InputStream reportStream = getClass().getResourceAsStream("/reports/MyReports/Demo.jrxml");
            if (reportStream == null) {
                throw new RuntimeException("Report file not found in classpath: /reports/MyReports/Demo.jrxml");
            }
            
            // Compile the report
            JasperReport jasperReport = JasperCompileManager.compileReport(reportStream);

            List<Map<String, Object>> reportData = new ArrayList<>();
            for(ExpenseEntity ex : expenses) {
            	Map<String, Object> exMap = new HashMap<>();
            	exMap.put("transactionDate", ex.getTransactionDate());
            	exMap.put("title", ex.getTitle());
            	exMap.put("amount", ex.getAmount());
            	exMap.put("accountTitle", ex.getAccount() != null ? ex.getAccount().getTitle() : "N/A");
            	exMap.put("categoryTitle", ex.getCategory() != null ? ex.getCategory().getTitle() : "N/A");
            	reportData.add(exMap);
            }
            
            // Convert expense data into JRBeanCollectionDataSource
            JRBeanCollectionDataSource dataSource = new JRBeanCollectionDataSource(reportData);
            
            // Parameters
            Map<String, Object> parameters = new HashMap<>();

            // Fill the report
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, dataSource);

            // Export the report as PDF
            response.setContentType("application/pdf");
            response.setHeader("Content-Disposition", "attachment; filename=expense_report.pdf");
            JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());
            
            response.getOutputStream().flush();
            response.getOutputStream().close();
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
}
