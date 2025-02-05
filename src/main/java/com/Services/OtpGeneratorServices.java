package com.services;

import org.springframework.stereotype.Service;

@Service
public class OtpGeneratorServices {
	public String generateOTP(Integer size) {
		StringBuilder sb = new StringBuilder();
		String seed = "0123456789";
		for(Integer i = 0; i < size; i++) {
			Integer index = (int)(Math.random() * seed.length());
			if(i == 0 && index == 0) {
				i--;
				continue;
			}
			sb.append(seed.charAt(index));
		}
		return sb.toString();
	}
}
