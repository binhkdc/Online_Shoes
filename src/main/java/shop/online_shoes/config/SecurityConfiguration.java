package shop.online_shoes.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import shop.online_shoes.config.authen.AuthenticationFailureHandlerCustom;
import shop.online_shoes.config.authen.AuthenticationSuccessHandlerCustom;


@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfiguration {
    // 1: Hiện thị message lôi khi đăng nhập?(Sai mật khẩu, user không tồn tại, tài khoản không kích hoạt...)
    // 2: Sau khi đăng nhập thành công với tài khoản có quyền admin sẽ chuyển đến trang backend/user/list
    // tài khoản có quyền user sẽ chuyển đến trang backend/user/create
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
    @Autowired
    AuthenticationFailureHandlerCustom authenticationFailureHandlerCustom;
    @Autowired
    AuthenticationSuccessHandlerCustom authenticationSuccessHandlerCustom;

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        // Chặn các request bắt đầu /backend/ bắt buộc đăng nhập
        http.authorizeRequests()
//                .antMatchers("/backend/user/list").hasRole("ADMIN")
//                .antMatchers("/backend/user/list").hasAnyRole("ADMIN", "USER")
                .antMatchers("/backend/**").hasRole("ADMIN")
                .antMatchers("/anonymous*").anonymous()
                .antMatchers("/backend/**").authenticated()

                .anyRequest().permitAll  ();

        http.csrf().disable();
        http.formLogin()
                .loginPage("/login")// redirect sang trang login nếu như nó bị chặn
                .loginProcessingUrl("/doLogin")
                .usernameParameter("email")
                .passwordParameter("password")
                .failureHandler(authenticationFailureHandlerCustom)
                .successHandler(authenticationSuccessHandlerCustom)

                .defaultSuccessUrl("/backend/user/list", true)
                .failureUrl("/login?error=true")
        ;
        http.logout().logoutUrl("/logout");
        return http.build();
    }

//    @Bean
//    public WebSecurityCustomizer webSecurityCustomizer() {
//        return (web) -> web.ignoring().antMatchers("/image-file/**");
//    }
}