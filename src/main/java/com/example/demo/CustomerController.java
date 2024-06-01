package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import javax.servlet.http.HttpServletRequest;


@RestController
public class CustomerController {

	@Value("${server.port}")
	private int serverPort;

	@Autowired 
	private HttpServletRequest request;
	
	@GetMapping(value = {"/", "/welcome"})
	public String welcome() {
		System.out.println("this is request from user..........................");
		return "Welcome.... IP (v1): "+ serverPort + "  address: "+ request.getRemoteAddr()+ "  address: " + request.getRemoteHost() + "  address: "+ request.getLocalAddr() ;
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
