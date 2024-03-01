package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CustomerController {
	@GetMapping(value = { "/", "/welcome"})
	public String welcome() {
		return "welcome to application";
	}

	@GetMapping(value = { "/customers/"})
	public String getCustomer() {
		return "list of customers 1";
	}
//	@GetMapping(value = {"/"})
//	public String getCustomer1() {
//		return "list of customers 2";
//	}
	@GetMapping(value = { "customers"})
	public String getCustomer2() {
		return "list of customers 3";
	}
}
