package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/customer")
public class CustomerController2 {

	@GetMapping(value = { "/add"})
	public String getCustomer() {
		return "list of customers 4";
	}
	@GetMapping(value = {"/delete"})
	public String getCustomer1() {
		return "list of customers 5";
	}
	@GetMapping(value = {"/display"})
	public String getCustomer2() {
		return "list of customers 6";
	}
	
	@GetMapping(value = {"/update"})
	public String getCustomer3() {
		return "list of customers 7";
	}
	
}
