package com.services;

import org.springframework.stereotype.Service;

@Service
public class ResetPasswordLink {
	public String generateResetPassToken() {
		String values = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM7418520963";
		StringBuilder sb = new StringBuilder("");
		for(Integer i = 0; i < 20; i++) {
			Integer index = (int) (Math.random()*values.length()-1);
			sb.append(values.charAt(index));
		}
		return sb.toString();
	}
}
