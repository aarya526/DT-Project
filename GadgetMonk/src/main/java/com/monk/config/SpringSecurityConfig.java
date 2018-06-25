package com.monk.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;


@Configuration
@EnableWebSecurity
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	DataSource dataSource;
	
	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
		
	  auth.jdbcAuthentication().dataSource(dataSource)
		.usersByUsernameQuery(
			"select signin,password, 'true' as enabled from customer where signin=?")
	    .authoritiesByUsernameQuery(
			"select signin, 'USER' as role from customer where signin=?");
	}	
	
	/*@Autowired
	public void configureGlobal(AuthenticationManagerBuilder authenticationMgr) throws Exception {
		
		authenticationMgr.inMemoryAuthentication().withUser("aarya").password("1234").roles("USER");
		
		
	}*/
	
	@Override
	protected void configure(HttpSecurity http) throws Exception{
		
		http.authorizeRequests().antMatchers("/**").permitAll()
		.and()
		.formLogin()
		.loginPage("/loginPage")
		.defaultSuccessUrl("/")
		.loginProcessingUrl("/login")
		.failureUrl("/loginPage?error=1")//
		.usernameParameter("signin")
		.passwordParameter("password")
		.and()
		.logout().logoutSuccessUrl("/")
		.permitAll()
		.and()
		.csrf().disable();
	}
	
	

}
