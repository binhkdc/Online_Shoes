package shop.online_shoes.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("home")
    public String login() {
        return "home";
    }
}
