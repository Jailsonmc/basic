package com.jailsonmc.backend.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BasicController {

	@GetMapping("/test")
	public String test() {
		return "Test";
	}
	
}
