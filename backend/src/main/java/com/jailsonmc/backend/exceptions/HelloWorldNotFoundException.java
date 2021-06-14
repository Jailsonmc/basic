package com.jailsonmc.backend.exceptions;

public class HelloWorldNotFoundException extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public HelloWorldNotFoundException(Long id) {
		super("Could not find " + id);
	}
	
}
