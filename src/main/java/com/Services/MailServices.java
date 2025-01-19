package com.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailServices {

	@Autowired
	JavaMailSender mailSender;
	
	public void sendSimpleEmail(String email, String otp) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(email);
        message.setSubject("Mail for Reset Password");
        message.setText("OTP to reset password : " + otp);
        message.setFrom("hr@srk.in");
        mailSender.send(message);
    }
	

	public void sendResetPassLinkEmail(String email, String token) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(email);
        message.setSubject("Mail for Reset Password");
        message.setText("Link to reset password : " + "http://localhost:9999/setpassword?token=" + token);
        message.setFrom("hr@srk.in");
        mailSender.send(message);
    }
}
