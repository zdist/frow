package com.frow.security;

import java.util.function.Function;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

@Configuration
public class SpringSecurityConfiguration {
	//LDAP or Database
	//In Memory 
	
	//InMemoryUserDetailsManager
	//InMemoryUserDetailsManager(UserDetails... users)
	
	@Bean
	public InMemoryUserDetailsManager createUserDetailsManager() {
		
		Function<String, String> passwordEncoder
				= input -> passwordEncoder().encode(input);
		
		UserDetails userDetails = User.builder()
									.passwordEncoder(passwordEncoder)
									.username("nazgemini")
									.password("frow")
									.roles("USER","ADMIN")
									.build();

		UserDetails userDetails1 = User.builder()
									.passwordEncoder(passwordEncoder)
									.username("aditi")
									.password("Aditi@123")
									.roles("USER","ADMIN")
									.build();

		UserDetails userDetails2 = User.builder()
									.passwordEncoder(passwordEncoder)
									.username("zo")
									.password("Zo@123")
									.roles("USER","ADMIN")
									.build();
		UserDetails userDetails3 = User.builder()
									.passwordEncoder(passwordEncoder)
									.username("nabil")
									.password("Nabil@123")
									.roles("USER","ADMIN")
									.build();
		return new InMemoryUserDetailsManager(userDetails,userDetails1,userDetails2,userDetails3);
	}

	

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
}

