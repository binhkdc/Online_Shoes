package shop.online_shoes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class testController {
    @GetMapping("")
    public String home(Model model) throws Exception {
        return "test";
    }

}
