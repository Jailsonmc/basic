package com.jailsonmc.backend.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.jailsonmc.backend.exceptions.HelloWorldNotFoundException;
import com.jailsonmc.backend.models.HelloWorld;
import com.jailsonmc.backend.repositories.HelloWorldRepository;


@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class HelloWorldController {

	@Autowired
	HelloWorldRepository repository;
	
	@GetMapping("/helloworlds")
	public List<HelloWorld> all() {
		return this.repository.findAll();
	}
	
	@PostMapping("/helloworld")
	public HelloWorld newHelloWorld(@RequestBody HelloWorld helloWorld) {
		return this.repository.save(helloWorld);
	}
	
	@DeleteMapping("/helloworld/{id}")
	public void deleteHelloWorld(@PathVariable Long id) {
		this.repository.deleteById(id);
	}
	
	@PutMapping("/helloworld/{id}")
	public HelloWorld editHelloWorld(@RequestBody HelloWorld newHelloWorld, @PathVariable Long id) {
		return this.repository.findById(id)
				.map(helloWorld -> {
					helloWorld.setText(newHelloWorld.getText());
					helloWorld.setLanguage(newHelloWorld.getLanguage());
					return this.repository.save(helloWorld);
				})
				.orElseGet(() -> {
					newHelloWorld.setId(id);
					return this.repository.save(newHelloWorld);
				}); 
		
	}
	
	@GetMapping("helloworld/{id}")
	public HelloWorld getHelloWorld(@PathVariable Long id) {
		return this.repository.findById(id).orElseThrow(() -> new HelloWorldNotFoundException(id));
	}
	
}
