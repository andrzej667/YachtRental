package com.javasda.YachtProject.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{

    @Autowired
    private UserDetailsServiceImpl userDetailsService;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/home", "/search", "/signup").permitAll()
                .antMatchers("/user", "/placeOrder").hasRole("USER")  // przekierowanie na home/login
                .antMatchers("/owner", "/yachtform").hasRole("OWNER")  // przekierowanie na home/login
                //.anyRequest().authenticated()  // wszystkie przekierowuja do /login
                .and()
                .formLogin().loginPage("/login").permitAll()
                .and()
                .exceptionHandling().accessDeniedPage("/accesDenided")
                .and()
                .csrf().disable();

        http.formLogin().defaultSuccessUrl("/rozdzielnia", true);
    }
    @Autowired
    void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        //auth.inMemoryAuthentication().withUser("user").password("user").roles("SHOP");
        auth.userDetailsService(userDetailsService);
    }

}
