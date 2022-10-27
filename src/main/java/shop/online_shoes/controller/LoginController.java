package shop.online_shoes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
    @GetMapping("/login1")
    public String login1() {
        return "login1";
    }
}
