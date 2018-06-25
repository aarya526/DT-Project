package com.monk.config;

import java.io.IOException;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;            
import org.springframework.web.servlet.view.JstlView;




@Configuration
@EnableWebMvc
@ComponentScan(basePackages="com.monk.*")
@Import(value= {SpringSecurityConfig.class})
public class WebConfig extends WebMvcConfigurerAdapter {
	

	
	
      @Override
	  public void addResourceHandlers(ResourceHandlerRegistry registry) {
	  registry.addResourceHandler("/resources/**").addResourceLocations("/WEB-INF/resources/");
}

  	@Bean(name="multipartResolver") 
  	public CommonsMultipartResolver getResolver() throws IOException{
  		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
  		
  		//Set the maximum allowed size (in bytes) for each individual file.
  		resolver.setMaxUploadSizePerFile(5242880);
  		
  		//You may also set other available properties.
  		
  		return resolver;
  	}

//	    @Bean
//	    public MessageSource messageSource() {
//	        ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
//	        messageSource.setBasename("messages");
//	        return messageSource;
// }
	 
	 @Bean
	 public InternalResourceViewResolver viewResolver(){
	  InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
	  viewResolver.setViewClass(JstlView.class);
	  viewResolver.setPrefix("/WEB-INF/jsp/");
	  viewResolver.setSuffix(".jsp");
	  return viewResolver;
	 }

}
