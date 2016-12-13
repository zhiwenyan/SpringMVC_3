package com.atguigu.springmvc;

import org.springframework.stereotype.Service;

@Service
public class UserService {
	
	private HelloWorld helloWorld;
	
	public UserService() {
		System.out.println("UserService Constructor...");
	}	
}
