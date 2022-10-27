package shop.online_shoes.config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import shop.online_shoes.controller.backend.UserController;

import java.util.List;
import java.util.Locale;

@Configuration
public class StaticResourceConfiguration implements WebMvcConfigurer {


    @Bean(name = "localeResolver")
    public LocaleResolver getLocaleResolver()  {
        SessionLocaleResolver resolver= new SessionLocaleResolver();
        resolver.setDefaultLocale(new Locale("en"));
        return resolver;
    }

    @Bean(name = "messageSource")
    public MessageSource getMessageResource()  {
        ReloadableResourceBundleMessageSource messageResource= new ReloadableResourceBundleMessageSource();
        // Read i18n/messages_xxx.properties file.
        // For example: i18n/messages_en.properties
        messageResource.setBasename("classpath:messages");
        messageResource.setDefaultEncoding("UTF-8");
        return messageResource;
    }
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        LocaleChangeInterceptor localeInterceptor = new LocaleChangeInterceptor();
        localeInterceptor.setParamName("lang");
        registry.addInterceptor(localeInterceptor).addPathPatterns("/**");
    }
}
