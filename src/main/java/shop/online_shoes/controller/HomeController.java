package shop.online_shoes.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import shop.online_shoes.service.ProductService;

import shop.online_shoes.service.ProducerService;


@Controller
public class HomeController {
    @Autowired
    ProducerService producerService;
    @GetMapping("")
    public String home(Model model) {
        try {
            model.addAttribute("product", producerService.list());

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "home";
    }
}
